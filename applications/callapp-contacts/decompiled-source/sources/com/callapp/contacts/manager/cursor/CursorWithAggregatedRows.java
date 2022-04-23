package com.callapp.contacts.manager.cursor;

import android.database.Cursor;
import android.database.CursorWrapper;
import com.callapp.contacts.util.CLog;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cursor/CursorWithAggregatedRows.class */
public abstract class CursorWithAggregatedRows<DataType> extends CursorWrapper {

    /* renamed from: d  reason: collision with root package name */
    private int f15046d;

    /* renamed from: b  reason: collision with root package name */
    private int f15044b = -1;

    /* renamed from: c  reason: collision with root package name */
    private final Object f15045c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private Map<Integer, PositionAndOffsetPair> f15043a = Collections.synchronizedMap(new ConcurrentHashMap());

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition.class */
    public class DataAndPosition {

        /* renamed from: a  reason: collision with root package name */
        int f15047a;

        /* renamed from: b  reason: collision with root package name */
        public DataType f15048b;

        public DataAndPosition(DataType datatype, int i) {
            this.f15048b = datatype;
            this.f15047a = i;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair.class */
    public static class PositionAndOffsetPair {

        /* renamed from: a  reason: collision with root package name */
        int f15050a;

        /* renamed from: b  reason: collision with root package name */
        int f15051b;

        public PositionAndOffsetPair(int i, int i2) {
            this.f15050a = i;
            this.f15051b = i2;
        }
    }

    public CursorWithAggregatedRows(Cursor cursor, int i) {
        super(cursor);
        this.f15046d = i;
    }

    private boolean a(int i, PositionAndOffsetPair positionAndOffsetPair) {
        synchronized (this.f15045c) {
            if (positionAndOffsetPair == null) {
                return false;
            }
            this.f15043a.put(Integer.valueOf(i), positionAndOffsetPair);
            return true;
        }
    }

    private PositionAndOffsetPair c(int i) {
        synchronized (this.f15045c) {
            if (!getWrappedCursor().moveToPosition(i)) {
                return null;
            }
            return a(i);
        }
    }

    protected abstract PositionAndOffsetPair a(int i);

    protected abstract CursorWithAggregatedRows<DataType>.DataAndPosition b(int i);

    @Override // android.database.CursorWrapper, android.database.Cursor
    public int getCount() {
        return this.f15046d;
    }

    public DataType getDataAtPosition(int i) {
        synchronized (this.f15045c) {
            if (!moveToPosition(i)) {
                return null;
            }
            return b(this.f15043a.get(Integer.valueOf(i)).f15050a).f15048b;
        }
    }

    @Override // android.database.CursorWrapper, android.database.Cursor
    public int getPosition() {
        return this.f15044b;
    }

    @Override // android.database.CursorWrapper, android.database.Cursor
    public boolean moveToFirst() {
        return moveToPosition(0);
    }

    @Override // android.database.CursorWrapper, android.database.Cursor
    public boolean moveToNext() {
        return !getWrappedCursor().isAfterLast() && moveToPosition(this.f15044b + 1);
    }

    @Override // android.database.CursorWrapper, android.database.Cursor
    public boolean moveToPosition(int i) {
        synchronized (this.f15045c) {
            if (i == this.f15044b) {
                return true;
            }
            if (i >= getCount() || i < 0) {
                return false;
            }
            if (i == 0) {
                if (this.f15043a.get(0) == null && !a(0, c(0))) {
                    this.f15044b = -1;
                    return false;
                }
                getWrappedCursor().moveToPosition(0);
                this.f15044b = 0;
                return true;
            } else if (this.f15043a.size() == 0 && !moveToFirst()) {
                return false;
            } else {
                if (!this.f15043a.containsKey(Integer.valueOf(i))) {
                    int size = this.f15043a.size();
                    for (int i2 = size; i2 <= i; i2++) {
                        int i3 = i2 - 1;
                        PositionAndOffsetPair positionAndOffsetPair = this.f15043a.get(Integer.valueOf(i3));
                        if (positionAndOffsetPair != null) {
                            a(i2, c(positionAndOffsetPair.f15050a + positionAndOffsetPair.f15051b));
                        } else {
                            String simpleName = getClass().getSimpleName();
                            StringBuilder sb = new StringBuilder("Unable to find the next wrapped position. Previous index was ");
                            sb.append(i3);
                            sb.append(" the next index was ");
                            sb.append(size);
                            sb.append(" size was ");
                            sb.append(getCount());
                            sb.append(" and the amount of aggregated data was ");
                            sb.append(this.f15043a.size());
                            sb.append(". The maximum inserted key is ");
                            sb.append(Collections.max(this.f15043a.keySet()));
                            CLog.a(simpleName);
                            return false;
                        }
                    }
                }
                PositionAndOffsetPair positionAndOffsetPair2 = this.f15043a.get(Integer.valueOf(i));
                if (positionAndOffsetPair2 == null) {
                    return false;
                }
                boolean moveToPosition = getWrappedCursor().moveToPosition(positionAndOffsetPair2.f15050a);
                if (!moveToPosition) {
                    i = -1;
                }
                this.f15044b = i;
                return moveToPosition;
            }
        }
    }

    @Override // android.database.CursorWrapper, android.database.Cursor
    public boolean moveToPrevious() {
        return !getWrappedCursor().isBeforeFirst() && moveToPosition(this.f15044b - 1);
    }
}
