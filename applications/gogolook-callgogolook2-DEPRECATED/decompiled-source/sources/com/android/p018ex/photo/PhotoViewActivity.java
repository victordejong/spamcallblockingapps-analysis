package com.android.p018ex.photo;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import p081h.p093b.p099c.p103c.AbstractC5619a;
import p081h.p093b.p099c.p103c.C5621b;
import p081h.p093b.p099c.p103c.C5629e;
/* renamed from: com.android.ex.photo.PhotoViewActivity */
/* loaded from: classes-dex2jar.jar:com/android/ex/photo/PhotoViewActivity.class */
public class PhotoViewActivity extends AppCompatActivity implements C5629e.AbstractC5638i {

    /* renamed from: a */
    public C5629e f1047a;

    /* renamed from: b */
    public C5621b f1048b;

    @Override // p081h.p093b.p099c.p103c.C5629e.AbstractC5638i
    /* renamed from: A */
    public AbstractC5619a mo24921A() {
        if (this.f1048b == null) {
            this.f1048b = new C5621b(getSupportActionBar());
        }
        return this.f1048b;
    }

    /* renamed from: D */
    public C5629e m36671D() {
        return new C5629e(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public View findViewById(int i) {
        return super.findViewById(i);
    }

    @Override // p081h.p093b.p099c.p103c.C5629e.AbstractC5638i
    public Context getContext() {
        return this;
    }

    @Override // android.app.Activity
    @NonNull
    public LayoutInflater getLayoutInflater() {
        return super.getLayoutInflater();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.f1047a.m24979a(i, i2, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (!this.f1047a.m24935m()) {
            super.onBackPressed();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f1047a = m36671D();
        this.f1047a.m24973a(bundle);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return this.f1047a.m24972a(menu) || super.onCreateOptionsMenu(menu);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f1047a.m24934n();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return this.f1047a.m24971a(menuItem) || super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        this.f1047a.m24931q();
        super.onPause();
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        return this.f1047a.m24955b(menu) || super.onPrepareOptionsMenu(menu);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f1047a.m24930r();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f1047a.m24956b(bundle);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.f1047a.m24929s();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        this.f1047a.m24928t();
        super.onStop();
    }

    @Override // p081h.p093b.p099c.p103c.C5629e.AbstractC5638i
    /* renamed from: u */
    public C5629e mo24920u() {
        return this.f1047a;
    }
}
