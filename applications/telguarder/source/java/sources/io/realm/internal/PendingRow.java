package io.realm.internal;

import io.realm.FrozenPendingRow;
import io.realm.RealmChangeListener;
import io.realm.RealmFieldType;
import io.realm.internal.core.DescriptorOrdering;
import java.lang.ref.WeakReference;
import java.util.Date;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/PendingRow.class */
public class PendingRow implements Row {
    private static final String PROXY_NOT_SET_MESSAGE = "The 'frontEnd' has not been set.";
    private static final String QUERY_EXECUTED_MESSAGE = "The query has been executed. This 'PendingRow' is not valid anymore.";
    private static final String QUERY_NOT_RETURNED_MESSAGE = "The pending query has not been executed.";
    private WeakReference<FrontEnd> frontEndRef;
    private RealmChangeListener<PendingRow> listener;
    private OsResults pendingOsResults;
    private boolean returnCheckedRow;
    private OsSharedRealm sharedRealm;

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/PendingRow$FrontEnd.class */
    public interface FrontEnd {
        void onQueryFinished(Row row);
    }

    public PendingRow(OsSharedRealm osSharedRealm, TableQuery tableQuery, DescriptorOrdering descriptorOrdering, boolean z) {
        this.sharedRealm = osSharedRealm;
        this.pendingOsResults = OsResults.createFromQuery(osSharedRealm, tableQuery, descriptorOrdering);
        RealmChangeListener<PendingRow> realmChangeListener = new RealmChangeListener<PendingRow>() { // from class: io.realm.internal.PendingRow.1
            public void onChange(PendingRow pendingRow) {
                PendingRow.this.notifyFrontEnd();
            }
        };
        this.listener = realmChangeListener;
        this.pendingOsResults.addListener((OsResults) this, (RealmChangeListener<OsResults>) realmChangeListener);
        this.returnCheckedRow = z;
        osSharedRealm.addPendingRow(this);
    }

    private void clearPendingCollection() {
        this.pendingOsResults.removeListener((OsResults) this, (RealmChangeListener<OsResults>) this.listener);
        this.pendingOsResults = null;
        this.listener = null;
        this.sharedRealm.removePendingRow(this);
    }

    public void notifyFrontEnd() {
        WeakReference<FrontEnd> weakReference = this.frontEndRef;
        if (weakReference != null) {
            FrontEnd frontEnd = weakReference.get();
            if (frontEnd == null) {
                clearPendingCollection();
                return;
            } else if (!this.pendingOsResults.isValid()) {
                clearPendingCollection();
                return;
            } else {
                UncheckedRow firstUncheckedRow = this.pendingOsResults.firstUncheckedRow();
                clearPendingCollection();
                if (firstUncheckedRow == null) {
                    frontEnd.onQueryFinished(InvalidRow.INSTANCE);
                    return;
                }
                CheckedRow checkedRow = firstUncheckedRow;
                if (this.returnCheckedRow) {
                    checkedRow = CheckedRow.getFromRow(firstUncheckedRow);
                }
                frontEnd.onQueryFinished(checkedRow);
                return;
            }
        }
        throw new IllegalStateException(PROXY_NOT_SET_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void checkIfAttached() {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public long createEmbeddedObject(long j, RealmFieldType realmFieldType) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    public void executeQuery() {
        if (this.pendingOsResults != null) {
            notifyFrontEnd();
            return;
        }
        throw new IllegalStateException(QUERY_EXECUTED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public Row freeze(OsSharedRealm osSharedRealm) {
        return FrozenPendingRow.INSTANCE;
    }

    @Override // io.realm.internal.Row
    public byte[] getBinaryByteArray(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public boolean getBoolean(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public long getColumnCount() {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public long getColumnKey(String str) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public String[] getColumnNames() {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public RealmFieldType getColumnType(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public Date getDate(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public Decimal128 getDecimal128(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public double getDouble(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public float getFloat(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public long getLink(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public long getLong(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public OsList getModelList(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public ObjectId getObjectId(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public long getObjectKey() {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public String getString(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public Table getTable() {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public OsList getValueList(long j, RealmFieldType realmFieldType) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public boolean hasColumn(String str) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public boolean isLoaded() {
        return false;
    }

    @Override // io.realm.internal.Row
    public boolean isNull(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public boolean isNullLink(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public boolean isValid() {
        return false;
    }

    @Override // io.realm.internal.Row
    public void nullifyLink(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setBinaryByteArray(long j, byte[] bArr) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setBoolean(long j, boolean z) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setDate(long j, Date date) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setDecimal128(long j, Decimal128 decimal128) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setDouble(long j, double d) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setFloat(long j, float f) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    public void setFrontEnd(FrontEnd frontEnd) {
        this.frontEndRef = new WeakReference<>(frontEnd);
    }

    @Override // io.realm.internal.Row
    public void setLink(long j, long j2) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setLong(long j, long j2) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setNull(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setObjectId(long j, ObjectId objectId) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setString(long j, String str) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }
}
