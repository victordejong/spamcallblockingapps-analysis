package androidx.transition;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/transition/Scene.class */
public class Scene {
    public Context mContext;
    public Runnable mEnterAction;
    public Runnable mExitAction;
    public View mLayout;
    public int mLayoutId;
    public ViewGroup mSceneRoot;

    public Scene(@NonNull ViewGroup viewGroup) {
        this.mLayoutId = -1;
        this.mSceneRoot = viewGroup;
    }

    public Scene(ViewGroup viewGroup, int i, Context context) {
        this.mLayoutId = -1;
        this.mContext = context;
        this.mSceneRoot = viewGroup;
        this.mLayoutId = i;
    }

    public Scene(@NonNull ViewGroup viewGroup, @NonNull View view) {
        this.mLayoutId = -1;
        this.mSceneRoot = viewGroup;
        this.mLayout = view;
    }

    public static Scene getCurrentScene(View view) {
        return (Scene) view.getTag(C1148R.C1150id.transition_current_scene);
    }

    @NonNull
    public static Scene getSceneForLayout(@NonNull ViewGroup viewGroup, @LayoutRes int i, @NonNull Context context) {
        SparseArray sparseArray = (SparseArray) viewGroup.getTag(C1148R.C1150id.transition_scene_layoutid_cache);
        SparseArray sparseArray2 = sparseArray;
        if (sparseArray == null) {
            sparseArray2 = new SparseArray();
            viewGroup.setTag(C1148R.C1150id.transition_scene_layoutid_cache, sparseArray2);
        }
        Scene scene = (Scene) sparseArray2.get(i);
        if (scene != null) {
            return scene;
        }
        Scene scene2 = new Scene(viewGroup, i, context);
        sparseArray2.put(i, scene2);
        return scene2;
    }

    public static void setCurrentScene(View view, Scene scene) {
        view.setTag(C1148R.C1150id.transition_current_scene, scene);
    }

    public void enter() {
        if (this.mLayoutId > 0 || this.mLayout != null) {
            getSceneRoot().removeAllViews();
            if (this.mLayoutId > 0) {
                LayoutInflater.from(this.mContext).inflate(this.mLayoutId, this.mSceneRoot);
            } else {
                this.mSceneRoot.addView(this.mLayout);
            }
        }
        Runnable runnable = this.mEnterAction;
        if (runnable != null) {
            runnable.run();
        }
        setCurrentScene(this.mSceneRoot, this);
    }

    public void exit() {
        Runnable runnable;
        if (getCurrentScene(this.mSceneRoot) == this && (runnable = this.mExitAction) != null) {
            runnable.run();
        }
    }

    @NonNull
    public ViewGroup getSceneRoot() {
        return this.mSceneRoot;
    }

    public boolean isCreatedFromLayoutResource() {
        return this.mLayoutId > 0;
    }

    public void setEnterAction(@Nullable Runnable runnable) {
        this.mEnterAction = runnable;
    }

    public void setExitAction(@Nullable Runnable runnable) {
        this.mExitAction = runnable;
    }
}
