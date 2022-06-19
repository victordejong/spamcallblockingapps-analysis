package com.crashlytics.android.answers;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/SearchEvent.class */
public class SearchEvent extends PredefinedEvent<SearchEvent> {
    static final String QUERY_ATTRIBUTE = "query";
    static final String TYPE = "search";

    @Override // com.crashlytics.android.answers.PredefinedEvent
    public String getPredefinedType() {
        return "search";
    }

    public SearchEvent putQuery(String str) {
        this.predefinedAttributes.put("query", str);
        return this;
    }
}
