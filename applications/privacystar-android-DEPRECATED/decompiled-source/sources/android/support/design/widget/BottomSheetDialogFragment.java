package android.support.design.widget;

import android.app.Dialog;
import android.os.Bundle;
import android.support.p004v7.app.AppCompatDialogFragment;
/* loaded from: classes-dex2jar.jar:android/support/design/widget/BottomSheetDialogFragment.class */
public class BottomSheetDialogFragment extends AppCompatDialogFragment {
    @Override // android.support.p004v7.app.AppCompatDialogFragment, android.support.p001v4.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        return new BottomSheetDialog(getContext(), getTheme());
    }
}
