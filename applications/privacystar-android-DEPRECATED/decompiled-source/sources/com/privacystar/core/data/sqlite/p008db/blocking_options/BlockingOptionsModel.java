package com.privacystar.core.data.sqlite.p008db.blocking_options;
/* renamed from: com.privacystar.core.data.sqlite.db.blocking_options.BlockingOptionsModel */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/blocking_options/BlockingOptionsModel.class */
public class BlockingOptionsModel {

    /* renamed from: com.privacystar.core.data.sqlite.db.blocking_options.BlockingOptionsModel$BlockingOptions */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/blocking_options/BlockingOptionsModel$BlockingOptions.class */
    public static class BlockingOptions {
        public int checked;
        public String message;
        public int offline;
        public String optionType;

        public BlockingOptions() {
        }

        public BlockingOptions(String str, int i, String str2, int i2) {
            this.optionType = str;
            this.checked = i;
            this.message = str2;
            this.offline = i2;
        }
    }
}
