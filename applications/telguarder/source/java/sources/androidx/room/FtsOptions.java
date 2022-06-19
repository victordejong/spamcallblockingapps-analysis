package androidx.room;
/* loaded from: classes-dex2jar.jar:androidx/room/FtsOptions.class */
public class FtsOptions {
    public static final String TOKENIZER_ICU = "icu";
    public static final String TOKENIZER_PORTER = "porter";
    public static final String TOKENIZER_SIMPLE = "simple";
    public static final String TOKENIZER_UNICODE61 = "unicode61";

    /* loaded from: classes-dex2jar.jar:androidx/room/FtsOptions$MatchInfo.class */
    public enum MatchInfo {
        FTS3,
        FTS4
    }

    /* loaded from: classes-dex2jar.jar:androidx/room/FtsOptions$Order.class */
    public enum Order {
        ASC,
        DESC
    }

    private FtsOptions() {
    }
}
