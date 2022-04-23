package zendesk.support;

import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SortBy.class */
public enum SortBy {
    POSITION,
    TITLE,
    CREATED_AT,
    UPDATED_AT;

    public String getApiValue() {
        return name().toLowerCase(Locale.US);
    }
}
