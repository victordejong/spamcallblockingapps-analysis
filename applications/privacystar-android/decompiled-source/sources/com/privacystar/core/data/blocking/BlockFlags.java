package com.privacystar.core.data.blocking;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/blocking/BlockFlags.class */
public class BlockFlags {
    private static final int ACTIONCODE_ALLOW = 2;
    private static final int ACTIONCODE_BLOCK = 1;
    private static final int ACTIONCODE_NO_OP = 0;
    private static final int ACTIONCODE_VOICEMAIL = 3;
    private static final int EVENTCODE_BOTH = 0;
    private static final int EVENTCODE_CALL = 1;
    private static final int EVENTCODE_SMS = 2;
    private static final String MATCHVALUE_DND = "*";
    private static final String MATCHVALUE_EMPTY_STRING = "";
    private static final String MATCHVALUE_INVALID = "INVALID";
    private static final String MATCHVALUE_ROBOCALL = "ROBO";
    private static final String MATCHVALUE_SIMILAR = "SIMILAR";
    private static final String MATCHVALUE_UNKNOWN = "UNKNOWN";
    public static final String MATCHVALUE_WILDCARD = "*";

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/blocking/BlockFlags$ActionCode.class */
    public enum ActionCode {
        NO_OPERATION(0),
        BLOCK(1),
        ALLOW(2),
        VOICEMAIL(3);
        
        private int value;

        ActionCode(int i) {
            this.value = i;
        }

        public static ActionCode createFromInt(int i) {
            ActionCode[] values;
            for (ActionCode actionCode : values()) {
                if (actionCode.value == i) {
                    return actionCode;
                }
            }
            return null;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/blocking/BlockFlags$EventCode.class */
    public enum EventCode {
        BOTH(0),
        CALL(1),
        SMS(2);
        
        private int value;

        EventCode(int i) {
            this.value = i;
        }

        public static EventCode createFromInt(int i) {
            EventCode[] values;
            for (EventCode eventCode : values()) {
                if (eventCode.value == i) {
                    return eventCode;
                }
            }
            return null;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/blocking/BlockFlags$MatchValue.class */
    public enum MatchValue {
        DND("*"),
        UNKNOWN("UNKNOWN"),
        EMPTY(""),
        INVALID("INVALID"),
        SIMILAR("SIMILAR"),
        ROBOCALL("ROBO");
        
        private String value;

        MatchValue(String str) {
            this.value = str;
        }

        public static MatchValue createFromString(String str) {
            MatchValue[] values;
            for (MatchValue matchValue : values()) {
                if (matchValue.value.equalsIgnoreCase(str)) {
                    return matchValue;
                }
            }
            return null;
        }

        public String getValue() {
            return this.value;
        }
    }
}
