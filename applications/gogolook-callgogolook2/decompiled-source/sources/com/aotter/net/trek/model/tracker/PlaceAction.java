package com.aotter.net.trek.model.tracker;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/tracker/PlaceAction.class */
public enum PlaceAction {
    CALL_OUT("CALL_OUT"),
    CALL_IN("CALL_IN"),
    CALL_BLOCK("CALL_BLOCK"),
    UNKNOWN("UNKNOWN");
    
    public String val;

    PlaceAction(String str) {
        this.val = str;
    }

    public String val() {
        return this.val;
    }
}
