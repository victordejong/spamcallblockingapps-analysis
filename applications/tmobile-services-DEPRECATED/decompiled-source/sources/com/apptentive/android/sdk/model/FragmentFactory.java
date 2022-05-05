package com.apptentive.android.sdk.model;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.AboutFragment;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.AppStoreRatingFragment;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.EnjoymentDialogFragment;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterErrorFragment;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.NavigateToLinkFragment;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.NoteFragment;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.RatingDialogFragment;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.SurveyFragment;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.UpgradeMessageFragment;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/FragmentFactory.class */
public class FragmentFactory {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apptentive.android.sdk.model.FragmentFactory$1 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/FragmentFactory$1.class */
    public static /* synthetic */ class C07791 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$Interaction$Type */
        static final /* synthetic */ int[] f6450xb4613d26;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[Interaction.Type.values().length];
            f6450xb4613d26 = iArr;
            try {
                iArr[Interaction.Type.UpgradeMessage.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6450xb4613d26[Interaction.Type.EnjoymentDialog.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6450xb4613d26[Interaction.Type.RatingDialog.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f6450xb4613d26[Interaction.Type.AppStoreRating.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f6450xb4613d26[Interaction.Type.Survey.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f6450xb4613d26[Interaction.Type.MessageCenter.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f6450xb4613d26[Interaction.Type.TextModal.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f6450xb4613d26[Interaction.Type.NavigateToLink.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        if (r0 != 6) goto L_0x0043;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.os.Bundle addDisplayModeToFragmentBundle(@androidx.annotation.NonNull android.os.Bundle r4) {
        /*
            r0 = r4
            java.lang.String r1 = "showAsModal"
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x000b
            r0 = r4
            return r0
        L_0x000b:
            r0 = 0
            r5 = r0
            r0 = r4
            java.lang.String r1 = "fragmentType"
            r2 = 0
            int r0 = r0.getInt(r1, r2)
            r1 = 3
            if (r0 != r1) goto L_0x0043
            r0 = r4
            java.lang.String r1 = "interaction"
            java.lang.String r0 = r0.getString(r1)
            com.apptentive.android.sdk.module.engagement.interaction.model.Interaction r0 = com.apptentive.android.sdk.module.engagement.interaction.model.Interaction.Factory.parseInteraction(r0)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0043
            int[] r0 = com.apptentive.android.sdk.model.FragmentFactory.C07791.f6450xb4613d26
            r1 = r6
            com.apptentive.android.sdk.module.engagement.interaction.model.Interaction$Type r1 = r1.getType()
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r7 = r0
            r0 = r5
            r8 = r0
            r0 = r7
            r1 = 5
            if (r0 == r1) goto L_0x0046
            r0 = r5
            r8 = r0
            r0 = r7
            r1 = 6
            if (r0 == r1) goto L_0x0046
        L_0x0043:
            r0 = 1
            r8 = r0
        L_0x0046:
            r0 = r4
            java.lang.String r1 = "showAsModal"
            r2 = r8
            r0.putBoolean(r1, r2)
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.model.FragmentFactory.addDisplayModeToFragmentBundle(android.os.Bundle):android.os.Bundle");
    }

    public static ApptentiveBaseFragment createFragmentInstance(@NonNull Bundle bundle) {
        int i = bundle.getInt("fragmentType", 0);
        if (i == 0) {
            return null;
        }
        if (i == 3) {
            Interaction parseInteraction = Interaction.Factory.parseInteraction(bundle.getString("interaction"));
            if (parseInteraction == null) {
                return null;
            }
            switch (C07791.f6450xb4613d26[parseInteraction.getType().ordinal()]) {
                case 1:
                    return UpgradeMessageFragment.newInstance(bundle);
                case 2:
                    return EnjoymentDialogFragment.newInstance(bundle);
                case 3:
                    return RatingDialogFragment.newInstance(bundle);
                case 4:
                    return AppStoreRatingFragment.newInstance(bundle);
                case 5:
                    return SurveyFragment.newInstance(bundle);
                case 6:
                    return MessageCenterFragment.newInstance(bundle);
                case 7:
                    return NoteFragment.newInstance(bundle);
                case 8:
                    return NavigateToLinkFragment.newInstance(bundle);
                default:
                    return null;
            }
        } else if (i == 2) {
            return MessageCenterErrorFragment.newInstance(bundle);
        } else {
            if (i == 1) {
                return AboutFragment.newInstance(bundle);
            }
            return null;
        }
    }
}
