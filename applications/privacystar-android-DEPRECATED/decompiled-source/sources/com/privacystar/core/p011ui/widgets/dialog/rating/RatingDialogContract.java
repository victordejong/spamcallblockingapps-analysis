package com.privacystar.core.p011ui.widgets.dialog.rating;

import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018��2\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/dialog/rating/RatingDialogContract;", "", "()V", "View", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.dialog.rating.RatingDialogContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/rating/RatingDialogContract.class */
public final class RatingDialogContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&J\b\u0010\u0007\u001a\u00020\u0003H&J\b\u0010\b\u001a\u00020\u0003H&¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/dialog/rating/RatingDialogContract$View;", "", "finishDialog", "", "positiveReview", "", "goToPlayStore", "setupGoodReviewThankYouPage", "setupRatingPage", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.widgets.dialog.rating.RatingDialogContract$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/rating/RatingDialogContract$View.class */
    public interface View {
        void finishDialog(boolean z);

        void goToPlayStore();

        void setupGoodReviewThankYouPage();

        void setupRatingPage();
    }
}
