package com.callapp.contacts.manager.cursor;

import android.database.Cursor;
import android.database.CursorWrapper;
import com.callapp.contacts.util.CLog;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cursor/CursorWithAggregatedRows.class */
public abstract class CursorWithAggregatedRows<DataType> extends CursorWrapper {

    /* renamed from: d */
    private int f25985d;

    /* renamed from: b */
    private int f25983b = -1;

    /* renamed from: c */
    private final Object f25984c = new Object();

    /* renamed from: a */
    private Map<Integer, PositionAndOffsetPair> f25982a = Collections.synchronizedMap(new ConcurrentHashMap());

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition.class */
    public class DataAndPosition {

        /* renamed from: a */
        int f25986a;

        /* renamed from: b */
        public DataType f25987b;

        public DataAndPosition(DataType datatype, int i) {
            CursorWithAggregatedRows.this = r4;
            this.f25987b = datatype;
            this.f25986a = i;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair.class */
    public static class PositionAndOffsetPair {

        /* renamed from: a */
        int f25989a;

        /* renamed from: b */
        int f25990b;

        public PositionAndOffsetPair(int i, int i2) {
            this.f25989a = i;
            this.f25990b = i2;
        }
    }

    public CursorWithAggregatedRows(Cursor cursor, int i) {
        super(cursor);
        this.f25985d = i;
    }

    /* renamed from: a */
    private boolean m28300a(int i, PositionAndOffsetPair positionAndOffsetPair) {
        synchronized (this.f25984c) {
            if (positionAndOffsetPair != null) {
                this.f25982a.put(Integer.valueOf(i), positionAndOffsetPair);
                return true;
            }
            return false;
        }
    }

    /* renamed from: c */
    private PositionAndOffsetPair m28299c(int i) {
        synchronized (this.f25984c) {
            if (!getWrappedCursor().moveToPosition(i)) {
                return null;
            }
            return mo28074a(i);
        }
    }

    /* renamed from: a */
    protected abstract PositionAndOffsetPair mo28074a(int i);

    /* renamed from: b */
    protected abstract CursorWithAggregatedRows<DataType>.DataAndPosition mo28073b(int i);

    @Override // android.database.CursorWrapper, android.database.Cursor
    public int getCount() {
        return this.f25985d;
    }

    public DataType getDataAtPosition(int i) {
        synchronized (this.f25984c) {
            if (moveToPosition(i)) {
                return mo28073b(this.f25982a.get(Integer.valueOf(i)).f25989a).f25987b;
            }
            return null;
        }
    }

    @Override // android.database.CursorWrapper, android.database.Cursor
    public int getPosition() {
        return this.f25983b;
    }

    @Override // android.database.CursorWrapper, android.database.Cursor
    public boolean moveToFirst() {
        return moveToPosition(0);
    }

    @Override // android.database.CursorWrapper, android.database.Cursor
    public boolean moveToNext() {
        return !getWrappedCursor().isAfterLast() && moveToPosition(this.f25983b + 1);
    }

    @Override // android.database.CursorWrapper, android.database.Cursor
    public boolean moveToPosition(int i) {
        synchronized (this.f25984c) {
            if (i == this.f25983b) {
                return true;
            }
            if (i >= getCount() || i < 0) {
                return false;
            }
            if (i == 0) {
                if (this.f25982a.get(0) == null && !m28300a(0, m28299c(0))) {
                    this.f25983b = -1;
                    return false;
                }
                getWrappedCursor().moveToPosition(0);
                this.f25983b = 0;
                return true;
            } else if (this.f25982a.size() == 0 && !moveToFirst()) {
                return false;
            } else {
                if (!this.f25982a.containsKey(Integer.valueOf(i))) {
                    int size = this.f25982a.size();
                    for (int i2 = size; i2 <= i; i2++) {
                        int i3 = i2 - 1;
                        PositionAndOffsetPair positionAndOffsetPair = this.f25982a.get(Integer.valueOf(i3));
                        if (positionAndOffsetPair == null) {
                            String simpleName = getClass().getSimpleName();
                            StringBuilder sb = new StringBuilder("Unable to find the next wrapped position. Previous index was ");
                            sb.append(i3);
                            sb.append(" the next index was ");
                            sb.append(size);
                            sb.append(" size was ");
                            sb.append(getCount());
                            sb.append(" and the amount of aggregated data was ");
                            sb.append(this.f25982a.size());
                            sb.append(". The maximum inserted key is ");
                            sb.append(Collections.max(this.f25982a.keySet()));
                            CLog.m27606a(simpleName);
                            return false;
                        }
                        m28300a(i2, m28299c(positionAndOffsetPair.f25989a + positionAndOffsetPair.f25990b));
                    }
                }
                PositionAndOffsetPair positionAndOffsetPair2 = this.f25982a.get(Integer.valueOf(i));
                if (positionAndOffsetPair2 == null) {
                    return false;
                }
                boolean moveToPosition = getWrappedCursor().moveToPosition(positionAndOffsetPair2.f25989a);
                if (!moveToPosition) {
                    i = -1;
                }
                this.f25983b = i;
                return moveToPosition;
            }
        }
    }

    @Override // android.database.CursorWrapper, android.database.Cursor
    public boolean moveToPrevious() {
        return !getWrappedCursor().isBeforeFirst() && moveToPosition(this.f25983b - 1);
    }
}
