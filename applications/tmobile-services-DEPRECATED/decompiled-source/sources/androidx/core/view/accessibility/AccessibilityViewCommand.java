package androidx.core.view.accessibility;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
/* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityViewCommand.class */
public interface AccessibilityViewCommand {

    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments.class */
    public static abstract class CommandArguments {

        /* renamed from: a */
        Bundle f3351a;

        @RestrictTo
        /* renamed from: a */
        public void m18961a(Bundle bundle) {
            this.f3351a = bundle;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityViewCommand$MoveAtGranularityArguments.class */
    public static final class MoveAtGranularityArguments extends CommandArguments {
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityViewCommand$MoveHtmlArguments.class */
    public static final class MoveHtmlArguments extends CommandArguments {
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityViewCommand$MoveWindowArguments.class */
    public static final class MoveWindowArguments extends CommandArguments {
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityViewCommand$ScrollToPositionArguments.class */
    public static final class ScrollToPositionArguments extends CommandArguments {
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityViewCommand$SetProgressArguments.class */
    public static final class SetProgressArguments extends CommandArguments {
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityViewCommand$SetSelectionArguments.class */
    public static final class SetSelectionArguments extends CommandArguments {
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityViewCommand$SetTextArguments.class */
    public static final class SetTextArguments extends CommandArguments {
    }

    /* renamed from: a */
    boolean mo10380a(@NonNull View view, @Nullable CommandArguments commandArguments);
}
