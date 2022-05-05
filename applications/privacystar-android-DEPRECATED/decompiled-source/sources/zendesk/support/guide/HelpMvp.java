package zendesk.support.guide;

import android.support.annotation.Nullable;
import com.zendesk.service.ZendeskCallback;
import java.util.List;
import zendesk.support.ArticleItem;
import zendesk.support.CategoryItem;
import zendesk.support.HelpItem;
import zendesk.support.SectionItem;
import zendesk.support.SeeAllArticlesItem;
import zendesk.support.guide.HelpCenterMvp;
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpMvp.class */
interface HelpMvp {

    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpMvp$Model.class */
    public interface Model {
        void getArticles(List<Long> list, List<Long> list2, String[] strArr, ZendeskCallback<List<HelpItem>> zendeskCallback);

        void getArticlesForSection(SectionItem sectionItem, String[] strArr, ZendeskCallback<List<ArticleItem>> zendeskCallback);
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpMvp$Presenter.class */
    public interface Presenter {
        HelpItem getItem(int i);

        int getItemCount();

        @Nullable
        HelpItem getItemForBinding(int i);

        int getItemViewType(int i);

        void onAttached();

        boolean onCategoryClick(CategoryItem categoryItem, int i);

        void onDetached();

        void onSeeAllClick(SeeAllArticlesItem seeAllArticlesItem);

        void setContentPresenter(HelpCenterMvp.Presenter presenter);
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpMvp$View.class */
    public interface View {
        void addItem(int i, HelpItem helpItem);

        void removeItem(int i);

        void showItems(List<HelpItem> list);
    }
}
