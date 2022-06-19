.class public Lh8/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh8/u;->d(Landroid/widget/ImageView;Landroid/widget/CheckBox;ZLandroid/widget/ImageView;Landroid/widget/CheckBox;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lh8/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance v0, Lk8/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lk8/d;-><init>(I)V

    invoke-virtual {p1, v0}, Lba/b;->g(Ljava/lang/Object;)V

    return v1
.end method
