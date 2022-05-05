package com.mikepenz.aboutlibraries;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.util.Log;
import android.view.animation.LayoutAnimationController;
import com.mikepenz.aboutlibraries.Libs;
import com.mikepenz.aboutlibraries.LibsConfiguration;
import com.mikepenz.aboutlibraries.entity.Library;
import com.mikepenz.aboutlibraries.p007ui.LibsActivity;
import com.mikepenz.aboutlibraries.p007ui.LibsFragment;
import com.mikepenz.aboutlibraries.p007ui.LibsSupportFragment;
import com.mikepenz.aboutlibraries.p007ui.item.LibraryItem;
import com.mikepenz.aboutlibraries.util.Colors;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/LibsBuilder.class */
public class LibsBuilder implements Serializable {
    public String[] fields = null;
    public String[] internalLibraries = null;
    public String[] excludeLibraries = null;
    public Boolean autoDetect = true;
    public Boolean sort = true;
    public Comparator<Library> libraryComparator = null;
    public Boolean showLicense = false;
    public Boolean showLicenseDialog = true;
    public Boolean showVersion = false;
    public boolean showLoadingProgress = true;
    public Boolean aboutShowIcon = null;
    public String aboutVersionString = null;
    public String aboutAppName = null;
    public Boolean aboutShowVersion = null;
    public String aboutDescription = null;
    public Boolean aboutShowVersionName = false;
    public Boolean aboutShowVersionCode = false;
    public String aboutAppSpecial1 = null;
    public String aboutAppSpecial1Description = null;
    public String aboutAppSpecial2 = null;
    public String aboutAppSpecial2Description = null;
    public String aboutAppSpecial3 = null;
    public String aboutAppSpecial3Description = null;
    public Integer activityTheme = -1;
    public String activityTitle = null;
    public Colors activityColor = null;
    public Libs.ActivityStyle activityStyle = null;
    public LibTaskExecutor libTaskExecutor = LibTaskExecutor.DEFAULT_EXECUTOR;
    public HashMap<String, HashMap<String, String>> libraryModification = null;
    public Class ownLibsActivityClass = LibsActivity.class;

    private void preCheck() {
        if (this.fields == null) {
            Log.w("AboutLibraries", "Have you missed to call withFields(R.string.class.getFields())? - autoDetect won't work - https://github.com/mikepenz/AboutLibraries/wiki/HOWTO:-Fragment");
        }
    }

    public void activity(Context context) {
        start(context);
    }

    public FastAdapter adapter(Context context) {
        Libs libs = this.fields == null ? new Libs(context) : new Libs(context, this.fields);
        libs.modifyLibraries(this.libraryModification);
        ArrayList<Library> prepareLibraries = libs.prepareLibraries(context, this.internalLibraries, this.excludeLibraries, this.autoDetect.booleanValue(), this.sort.booleanValue());
        ItemAdapter itemAdapter = new ItemAdapter();
        ArrayList arrayList = new ArrayList();
        Iterator<Library> it = prepareLibraries.iterator();
        while (it.hasNext()) {
            arrayList.add(new LibraryItem().withLibrary(it.next()).withLibsBuilder(this));
        }
        FastAdapter with = FastAdapter.with(itemAdapter);
        itemAdapter.add((List) arrayList);
        return with;
    }

    public LibsFragment fragment() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("data", this);
        LibsFragment libsFragment = new LibsFragment();
        libsFragment.setArguments(bundle);
        return libsFragment;
    }

    public Intent intent(Context context) {
        return intent(context, this.ownLibsActivityClass);
    }

    public Intent intent(Context context, Class cls) {
        preCheck();
        Intent intent = new Intent(context, cls);
        intent.putExtra("data", this);
        intent.putExtra(Libs.BUNDLE_THEME, this.activityTheme);
        if (this.activityTitle != null) {
            intent.putExtra(Libs.BUNDLE_TITLE, this.activityTitle);
        }
        if (this.activityColor != null) {
            intent.putExtra(Libs.BUNDLE_COLORS, this.activityColor);
        }
        if (this.activityStyle != null) {
            intent.putExtra(Libs.BUNDLE_STYLE, this.activityStyle.name());
        }
        return intent;
    }

    public void start(Context context) {
        context.startActivity(intent(context));
    }

    public LibsSupportFragment supportFragment() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("data", this);
        LibsSupportFragment libsSupportFragment = new LibsSupportFragment();
        libsSupportFragment.setArguments(bundle);
        return libsSupportFragment;
    }

    public LibsBuilder withAboutAppName(String str) {
        this.aboutAppName = str;
        return this;
    }

    public LibsBuilder withAboutDescription(String str) {
        this.aboutDescription = str;
        return this;
    }

    public LibsBuilder withAboutIconShown(boolean z) {
        this.aboutShowIcon = Boolean.valueOf(z);
        return this;
    }

    public LibsBuilder withAboutSpecial1(String str) {
        this.aboutAppSpecial1 = str;
        return this;
    }

    public LibsBuilder withAboutSpecial1Description(String str) {
        this.aboutAppSpecial1Description = str;
        return this;
    }

    public LibsBuilder withAboutSpecial2(String str) {
        this.aboutAppSpecial2 = str;
        return this;
    }

    public LibsBuilder withAboutSpecial2Description(String str) {
        this.aboutAppSpecial2Description = str;
        return this;
    }

    public LibsBuilder withAboutSpecial3(String str) {
        this.aboutAppSpecial3 = str;
        return this;
    }

    public LibsBuilder withAboutSpecial3Description(String str) {
        this.aboutAppSpecial3Description = str;
        return this;
    }

    public LibsBuilder withAboutVersionShown(boolean z) {
        this.aboutShowVersion = Boolean.valueOf(z);
        this.aboutShowVersionName = Boolean.valueOf(z);
        this.aboutShowVersionCode = Boolean.valueOf(z);
        return this;
    }

    public LibsBuilder withAboutVersionShownCode(boolean z) {
        this.aboutShowVersionCode = Boolean.valueOf(z);
        return this;
    }

    public LibsBuilder withAboutVersionShownName(boolean z) {
        this.aboutShowVersionName = Boolean.valueOf(z);
        return this;
    }

    public LibsBuilder withAboutVersionString(String str) {
        this.aboutVersionString = str;
        return this;
    }

    public LibsBuilder withActivityColor(Colors colors) {
        this.activityColor = colors;
        return this;
    }

    public LibsBuilder withActivityStyle(Libs.ActivityStyle activityStyle) {
        this.activityStyle = activityStyle;
        return this;
    }

    public LibsBuilder withActivityTheme(int i) {
        this.activityTheme = Integer.valueOf(i);
        return this;
    }

    public LibsBuilder withActivityTitle(String str) {
        this.activityTitle = str;
        return this;
    }

    public LibsBuilder withAutoDetect(boolean z) {
        this.autoDetect = Boolean.valueOf(z);
        return this;
    }

    public LibsBuilder withExcludedLibraries(String... strArr) {
        this.excludeLibraries = strArr;
        return this;
    }

    public LibsBuilder withFields(String... strArr) {
        this.fields = strArr;
        return this;
    }

    public LibsBuilder withFields(Field[] fieldArr) {
        return withFields(Libs.toStringArray(fieldArr));
    }

    public LibsBuilder withLayoutAnimationController(LayoutAnimationController layoutAnimationController) {
        LibsConfiguration.getInstance().setLayoutAnimationController(layoutAnimationController);
        return this;
    }

    public LibsBuilder withLibTaskCallback(LibTaskCallback libTaskCallback) {
        LibsConfiguration.getInstance().setLibTaskCallback(libTaskCallback);
        return this;
    }

    public LibsBuilder withLibTaskExecutor(LibTaskExecutor libTaskExecutor) {
        if (libTaskExecutor != null) {
            this.libTaskExecutor = libTaskExecutor;
        }
        return this;
    }

    public LibsBuilder withLibraries(String... strArr) {
        this.internalLibraries = strArr;
        return this;
    }

    public LibsBuilder withLibraryComparator(Comparator<Library> comparator) {
        this.libraryComparator = comparator;
        this.sort = Boolean.valueOf(comparator != null);
        return this;
    }

    public LibsBuilder withLibraryModification(String str, Libs.LibraryFields libraryFields, String str2) {
        if (this.libraryModification == null) {
            this.libraryModification = new HashMap<>();
        }
        if (!this.libraryModification.containsKey(str)) {
            this.libraryModification.put(str, new HashMap<>());
        }
        this.libraryModification.get(str).put(libraryFields.name(), str2);
        return this;
    }

    public LibsBuilder withLibraryModification(HashMap<String, HashMap<String, String>> hashMap) {
        this.libraryModification = hashMap;
        return this;
    }

    public LibsBuilder withLibsRecyclerViewListener(LibsConfiguration.LibsRecyclerViewListener libsRecyclerViewListener) {
        LibsConfiguration.getInstance().setLibsRecyclerViewListener(libsRecyclerViewListener);
        return this;
    }

    public LibsBuilder withLicenseDialog(boolean z) {
        this.showLicenseDialog = Boolean.valueOf(z);
        return this;
    }

    public LibsBuilder withLicenseShown(boolean z) {
        this.showLicense = Boolean.valueOf(z);
        return this;
    }

    public LibsBuilder withListener(LibsConfiguration.LibsListener libsListener) {
        LibsConfiguration.getInstance().setListener(libsListener);
        return this;
    }

    public LibsBuilder withOwnLibsActivityClass(@NonNull Class cls) {
        this.ownLibsActivityClass = cls;
        return this;
    }

    public LibsBuilder withShowLoadingProgress(boolean z) {
        this.showLoadingProgress = z;
        return this;
    }

    public LibsBuilder withSortEnabled(boolean z) {
        this.sort = Boolean.valueOf(z);
        return this;
    }

    public LibsBuilder withUiListener(LibsConfiguration.LibsUIListener libsUIListener) {
        LibsConfiguration.getInstance().setUiListener(libsUIListener);
        return this;
    }

    public LibsBuilder withVersionShown(boolean z) {
        this.showVersion = Boolean.valueOf(z);
        return this;
    }
}
