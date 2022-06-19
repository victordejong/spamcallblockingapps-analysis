.class Lcom/google/android/material/tabs/TabLayout$d;
.super Landroid/database/DataSetObserver;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 0

    .prologue
    .line 3237
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$d;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 3241
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->d()V

    .line 3242
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 3246
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->d()V

    .line 3247
    return-void
.end method
