package zendesk.support;

import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.google.gson.annotations.SerializedName;
import zendesk.core.Settings;
/* loaded from: classes3-dex2jar.jar:zendesk/support/HelpCenterSettings.class */
public class HelpCenterSettings implements Settings {
    private static HelpCenterSettings DEFAULT = new HelpCenterSettings();
    @SerializedName("help_center_article_voting_enabled")
    private boolean articleVotingEnabled;
    private boolean enabled;
    private String locale;

    @VisibleForTesting
    HelpCenterSettings() {
    }

    @VisibleForTesting
    HelpCenterSettings(boolean z, boolean z2, String str) {
        this.enabled = z;
        this.articleVotingEnabled = z2;
        this.locale = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HelpCenterSettings defaultSettings() {
        return DEFAULT;
    }

    @Nullable
    public String getLocale() {
        return this.locale;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isArticleVotingEnabled() {
        return this.articleVotingEnabled;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEnabled() {
        return this.enabled;
    }
}
