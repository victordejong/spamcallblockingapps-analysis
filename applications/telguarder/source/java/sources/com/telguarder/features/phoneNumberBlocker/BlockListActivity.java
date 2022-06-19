package com.telguarder.features.phoneNumberBlocker;

import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import com.telguarder.C2083R;
import com.telguarder.features.rateAndFeedback.ReportResult;
import com.telguarder.helpers.backend.BackendCallbackListener;
import com.telguarder.helpers.errorhandling.ErrorHelper;
import com.telguarder.helpers.p022ui.BOAdapter;
import com.telguarder.helpers.p022ui.UiHelper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneNumberBlocker/BlockListActivity.class */
public class BlockListActivity extends AppCompatActivity {
    static final int BLOCK_NUMBER_REQUEST = 1;
    private int deletingItemPosition = -1;
    private ReportEntryAdapter mAdapter;
    private ListView mBlockedNumbers;
    private TextView mError;
    private ProgressBar mProgressBar;
    private int mProgressColor;
    private Toolbar mToolbar;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder.class */
    public static class BlockedNumberHolder {
        public ImageView delete;
        public ProgressBar deleting;
        public TextView firstLine;
        public TextView secondLine;

        private BlockedNumberHolder() {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter.class */
    public class ReportEntryAdapter extends BOAdapter<ReportResult.ReportEntry> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ReportEntryAdapter(Context context, Fragment fragment, List<ReportResult.ReportEntry> list, int i) {
            super(context, fragment, list, i);
            BlockListActivity.this = r7;
            setGroupHeaderDisplayer(createHeaderDisplayer());
        }

        private void acquireViewReferencesFromHolder(View view, BlockedNumberHolder blockedNumberHolder) {
            blockedNumberHolder.firstLine = (TextView) view.findViewById(C2083R.C2086id.tv_blocked_number_first_line);
            blockedNumberHolder.secondLine = (TextView) view.findViewById(C2083R.C2086id.tv_blocked_number_second_line);
            blockedNumberHolder.delete = (ImageView) view.findViewById(C2083R.C2086id.iv_blocked_number_delete);
            blockedNumberHolder.deleting = (ProgressBar) view.findViewById(C2083R.C2086id.pb_deleting);
        }

        private BlockedNumberHolder createOrRetrieveViewHolder(View view) {
            BlockedNumberHolder blockedNumberHolder = (BlockedNumberHolder) view.getTag();
            BlockedNumberHolder blockedNumberHolder2 = blockedNumberHolder;
            if (blockedNumberHolder == null) {
                blockedNumberHolder2 = new BlockedNumberHolder();
                acquireViewReferencesFromHolder(view, blockedNumberHolder2);
                blockedNumberHolder2.deleting.getIndeterminateDrawable().setColorFilter(BlockListActivity.this.mProgressColor, PorterDuff.Mode.MULTIPLY);
                view.setTag(blockedNumberHolder2);
            }
            return blockedNumberHolder2;
        }

        private View.OnClickListener getDeleteClickListener(final int i) {
            return new View.OnClickListener() { // from class: com.telguarder.features.phoneNumberBlocker.BlockListActivity.ReportEntryAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (BlockListActivity.this.deletingItemPosition != -1 || i >= ReportEntryAdapter.this.getItems().size()) {
                        return;
                    }
                    BlockListActivity.this.deletingItemPosition = i;
                    ReportEntryAdapter.this.notifyDataSetChanged();
                    BlockedNumberManager.getInstance().removeBlockedNumber(BlockListActivity.this, ReportEntryAdapter.this.getItem(i).number, new BackendCallbackListener<ReportResult>(BlockListActivity.this) { // from class: com.telguarder.features.phoneNumberBlocker.BlockListActivity.ReportEntryAdapter.3.1
                        @Override // com.telguarder.helpers.backend.BackendCallbackListener
                        public void onError(Exception exc) {
                            BlockListActivity.this.handleError(true, exc);
                            ReportEntryAdapter.this.handleDeletionEnd();
                        }

                        @Override // com.telguarder.helpers.backend.BackendCallbackListener
                        public void onStart() {
                        }

                        public void onSuccess(ReportResult reportResult) {
                            if (i >= ReportEntryAdapter.this.getItems().size()) {
                                return;
                            }
                            ReportEntryAdapter.this.getItems().remove(i);
                            if (ReportEntryAdapter.this.getItems().size() == 1) {
                                ReportEntryAdapter.this.getItems().add(1, new ReportResult.ReportEntry());
                            }
                            ReportEntryAdapter.this.handleDeletionEnd();
                        }
                    });
                }
            };
        }

        private String getFirstLineString(ReportResult.ReportEntry reportEntry) {
            String str;
            if (TextUtils.isEmpty(reportEntry.owner)) {
                str = reportEntry.number;
            } else {
                str = reportEntry.owner + " (" + reportEntry.number + ")";
            }
            return str;
        }

        private void setSecondLineTextIfNeeded(ReportResult.ReportEntry reportEntry, BlockedNumberHolder blockedNumberHolder) {
            if (!TextUtils.isEmpty(reportEntry.reason)) {
                blockedNumberHolder.secondLine.setText(BlockReason.ofBackendKeyword(reportEntry.reason).displayableNameId());
            }
        }

        private void showAllViews(BlockedNumberHolder blockedNumberHolder) {
            blockedNumberHolder.firstLine.setVisibility(0);
            blockedNumberHolder.secondLine.setVisibility(0);
            blockedNumberHolder.delete.setVisibility(0);
            blockedNumberHolder.deleting.setVisibility(4);
        }

        private void showOnlyFirstLine(BlockedNumberHolder blockedNumberHolder) {
            blockedNumberHolder.firstLine.setVisibility(0);
            blockedNumberHolder.secondLine.setVisibility(8);
            blockedNumberHolder.delete.setVisibility(8);
            blockedNumberHolder.deleting.setVisibility(4);
        }

        public BOAdapter.GroupHeaderDisplayer<ReportResult.ReportEntry> createHeaderDisplayer() {
            return new BOAdapter.GroupHeaderDisplayer<ReportResult.ReportEntry>() { // from class: com.telguarder.features.phoneNumberBlocker.BlockListActivity.ReportEntryAdapter.1
                public void getHeaderDisplayed(View view, ReportResult.ReportEntry reportEntry, int i) {
                    ReportEntryAdapter.this.prepareHeader(view, i);
                }

                @Override // com.telguarder.helpers.p022ui.BOAdapter.GroupHeaderDisplayer
                public int getHeaderLayoutId() {
                    return C2083R.layout.list_item_header_blocked_numbers;
                }

                public boolean isHeaderDisplayed(ReportResult.ReportEntry reportEntry, int i) {
                    boolean z = true;
                    if (i != 0) {
                        z = i == 1;
                    }
                    return z;
                }
            };
        }

        public void getItemDisplayed(View view, ReportResult.ReportEntry reportEntry, int i) {
            String str;
            BlockedNumberHolder createOrRetrieveViewHolder = createOrRetrieveViewHolder(view);
            ArrayList<ReportResult.ReportEntry> arrayList = BlockedNumberManager.getInstance().getBlockedNumberList().numbers;
            if (i == 0) {
                showOnlyFirstLine(createOrRetrieveViewHolder);
                str = BlockListActivity.this.getString(C2083R.string.total_blocked_numbers, new Object[]{Integer.valueOf(BlockedNumberManager.getInstance().getBlockedNumberList().totalCount)});
            } else if (i == 1 && arrayList.size() == 2 && arrayList.get(1).isPlaceholderEntry()) {
                showOnlyFirstLine(createOrRetrieveViewHolder);
                str = BlockListActivity.this.getString(C2083R.string.no_numbers_reported);
            } else {
                showAllViews(createOrRetrieveViewHolder);
                str = getFirstLineString(reportEntry);
                setSecondLineTextIfNeeded(reportEntry, createOrRetrieveViewHolder);
                createOrRetrieveViewHolder.delete.setOnClickListener(getDeleteClickListener(i));
                if (i == BlockListActivity.this.deletingItemPosition) {
                    createOrRetrieveViewHolder.deleting.setVisibility(0);
                    createOrRetrieveViewHolder.delete.setVisibility(4);
                } else {
                    createOrRetrieveViewHolder.deleting.setVisibility(4);
                    createOrRetrieveViewHolder.delete.setVisibility(0);
                }
            }
            createOrRetrieveViewHolder.firstLine.setText(str);
        }

        public void handleDeletionEnd() {
            notifyDataSetChanged();
            BlockListActivity.this.deletingItemPosition = -1;
        }

        public void prepareHeader(View view, int i) {
            TextView textView = (TextView) view.findViewById(C2083R.C2086id.tv_blocked_number_header_title);
            LinearLayout linearLayout = (LinearLayout) view.findViewById(C2083R.C2086id.header_switch_layout);
            TextView textView2 = (TextView) view.findViewById(C2083R.C2086id.header_switch_title);
            if (i == 0) {
                textView.setText(C2083R.string.blocked_numbers_header_total);
                textView2.setText("");
                linearLayout.setVisibility(8);
                int paddingLeft = view.getPaddingLeft();
                BlockListActivity blockListActivity = BlockListActivity.this;
                view.setPadding(paddingLeft, UiHelper.dpToPixel(blockListActivity, blockListActivity.getResources().getDimension(C2083R.dimen.margin_medium)), view.getPaddingRight(), view.getPaddingBottom());
                return;
            }
            textView.setText(C2083R.string.blocked_numbers_header_by_you);
            textView2.setText(C2083R.string.block_call_title);
            SwitchCompat switchCompat = (SwitchCompat) view.findViewById(C2083R.C2086id.header_switcher);
            switchCompat.setChecked(BlockedNumberManager.getInstance().isBlockerSwitchOn());
            switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.telguarder.features.phoneNumberBlocker.BlockListActivity.ReportEntryAdapter.2
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    BlockedNumberManager.getInstance().setBlockerSwitchState(z);
                }
            });
            linearLayout.setVisibility(0);
        }
    }

    private void acquireViewReferences() {
        this.mProgressBar = (ProgressBar) findViewById(C2083R.C2086id.pb_blocked_numbers_loading);
        this.mBlockedNumbers = (ListView) findViewById(C2083R.C2086id.lv_blocked_numbers);
        this.mError = (TextView) findViewById(C2083R.C2086id.tv_blocked_numbers_error_text);
    }

    public void handleError(boolean z, Exception exc) {
        int i;
        int i2 = 0;
        if (z) {
            ErrorHelper.handleError(this, exc);
            i = 0;
            i2 = 8;
        } else {
            this.mError.setText(ErrorHelper.getErrorDataFromException(this, exc).message);
            i = 8;
        }
        this.mError.setVisibility(i2);
        this.mBlockedNumbers.setVisibility(i);
        this.mProgressBar.setVisibility(8);
    }

    private void loadBlockedNumbersFromBackend() {
        if (BlockedNumberManager.getInstance().isBlockedNumberListNotEmpty()) {
            handleReportResult();
        }
        BlockedNumberManager.getInstance().refreshCachedList(this, new BackendCallbackListener<ReportResult>(this) { // from class: com.telguarder.features.phoneNumberBlocker.BlockListActivity.2
            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onError(Exception exc) {
                if (!BlockedNumberManager.getInstance().isBlockedNumberListNotEmpty()) {
                    BlockListActivity.this.handleError(false, exc);
                }
            }

            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onStart() {
                if (!BlockedNumberManager.getInstance().isBlockedNumberListNotEmpty()) {
                    BlockListActivity.this.showProgress();
                }
            }

            public void onSuccess(ReportResult reportResult) {
                BlockListActivity.this.handleReportResult();
            }
        });
    }

    public static void openBlockList(AppCompatActivity appCompatActivity, View view) {
        UiHelper.openMainFeatureActivity(appCompatActivity, view, BlockListActivity.class, UiHelper.PageType.BLOCKLIST, false);
    }

    public void showProgress() {
        this.mProgressBar.setVisibility(0);
        this.mError.setVisibility(8);
        this.mBlockedNumbers.setVisibility(8);
    }

    private void startBlockActivity() {
        startActivityForResult(new Intent(this, BlockNumberActivity.class), 1);
    }

    public void addPlaceholderResults() {
        ArrayList<ReportResult.ReportEntry> arrayList = BlockedNumberManager.getInstance().getBlockedNumberList().numbers;
        if (arrayList != null) {
            if (arrayList.size() > 0 && arrayList.get(0).isPlaceholderEntry()) {
                return;
            }
            arrayList.add(0, new ReportResult.ReportEntry());
            if (arrayList.size() != 1) {
                return;
            }
            arrayList.add(0, new ReportResult.ReportEntry());
        }
    }

    public ReportEntryAdapter getReportEntryAdapter() {
        return new ReportEntryAdapter(this, null, BlockedNumberManager.getInstance().getBlockedNumberList().numbers, C2083R.layout.blocked_number_list_item);
    }

    public void handleReportResult() {
        addPlaceholderResults();
        ReportEntryAdapter reportEntryAdapter = getReportEntryAdapter();
        this.mAdapter = reportEntryAdapter;
        this.mBlockedNumbers.setAdapter((ListAdapter) reportEntryAdapter);
        showContent();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        ReportEntryAdapter reportEntryAdapter;
        super.onActivityResult(i, i2, intent);
        if (i == 1 && i2 == -1 && (reportEntryAdapter = this.mAdapter) != null) {
            try {
                reportEntryAdapter.notifyDataSetChanged();
            } catch (Exception e) {
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        finish();
        super.onBackPressed();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C2083R.layout.activity_block_list);
        View findViewById = findViewById(C2083R.C2086id.block_list_root_layout);
        ListView listView = (ListView) findViewById(C2083R.C2086id.lv_blocked_numbers);
        listView.addFooterView(((LayoutInflater) getSystemService("layout_inflater")).inflate(C2083R.layout.blocked_number_list_item, (ViewGroup) null, false));
        UiHelper.setupBarScreenWithBottomNavbarPadding(this, null, findViewById(C2083R.C2086id.bottom_view_to_blur), false);
        UiHelper.setCircularActivityTransition(this, bundle, findViewById);
        Toolbar toolbar = (Toolbar) findViewById(C2083R.C2086id.block_list_toolbar);
        this.mToolbar = toolbar;
        UiHelper.initToolbar(this, toolbar, C2083R.string.block_list);
        acquireViewReferences();
        loadBlockedNumbersFromBackend();
        this.mProgressColor = UiHelper.getColorWrapper(this, C2083R.C2084color.colorAccent);
        this.mProgressBar.getIndeterminateDrawable().setColorFilter(this.mProgressColor, PorterDuff.Mode.MULTIPLY);
        if (Build.VERSION.SDK_INT >= 23) {
            listView.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.telguarder.features.phoneNumberBlocker.BlockListActivity.1
                @Override // android.view.View.OnScrollChangeListener
                public void onScrollChange(View view, int i, int i2, int i3, int i4) {
                    BlockListActivity.this.mToolbar.setElevation(view.canScrollVertically(-1) ? 15.0f : 0.0f);
                }
            });
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        Drawable drawable = getDrawable(C2083R.C2085drawable.actionbar_icon_plus);
        if (drawable != null) {
            drawable.setColorFilter(UiHelper.getColorWrapper(this, C2083R.C2084color.white), PorterDuff.Mode.SRC_ATOP);
        }
        getMenuInflater().inflate(C2083R.C2088menu.menu_block_new_number, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            onBackPressed();
            return true;
        }
        if (itemId == 2131230782) {
            startBlockActivity();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public void showContent() {
        this.mProgressBar.setVisibility(8);
        this.mError.setVisibility(8);
        this.mBlockedNumbers.setVisibility(0);
    }
}
