package com.google.firebase.perf.util;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/util/StorageUnit.class */
public enum StorageUnit {
    TERABYTES(1099511627776L) { // from class: com.google.firebase.perf.util.StorageUnit.1
        @Override // com.google.firebase.perf.util.StorageUnit
        public long convert(long j, StorageUnit storageUnit) {
            return storageUnit.toTerabytes(j);
        }
    },
    GIGABYTES(1073741824) { // from class: com.google.firebase.perf.util.StorageUnit.2
        @Override // com.google.firebase.perf.util.StorageUnit
        public long convert(long j, StorageUnit storageUnit) {
            return storageUnit.toGigabytes(j);
        }
    },
    MEGABYTES(1048576) { // from class: com.google.firebase.perf.util.StorageUnit.3
        @Override // com.google.firebase.perf.util.StorageUnit
        public long convert(long j, StorageUnit storageUnit) {
            return storageUnit.toMegabytes(j);
        }
    },
    KILOBYTES(1024) { // from class: com.google.firebase.perf.util.StorageUnit.4
        @Override // com.google.firebase.perf.util.StorageUnit
        public long convert(long j, StorageUnit storageUnit) {
            return storageUnit.toKilobytes(j);
        }
    },
    BYTES(1) { // from class: com.google.firebase.perf.util.StorageUnit.5
        @Override // com.google.firebase.perf.util.StorageUnit
        public long convert(long j, StorageUnit storageUnit) {
            return storageUnit.toBytes(j);
        }
    };
    
    long numBytes;

    StorageUnit(long j) {
        this.numBytes = j;
    }

    public abstract long convert(long j, StorageUnit storageUnit);

    public long toBytes(long j) {
        return j * this.numBytes;
    }

    public long toGigabytes(long j) {
        return (j * this.numBytes) / GIGABYTES.numBytes;
    }

    public long toKilobytes(long j) {
        return (j * this.numBytes) / KILOBYTES.numBytes;
    }

    public long toMegabytes(long j) {
        return (j * this.numBytes) / MEGABYTES.numBytes;
    }

    public long toTerabytes(long j) {
        return (j * this.numBytes) / TERABYTES.numBytes;
    }
}
