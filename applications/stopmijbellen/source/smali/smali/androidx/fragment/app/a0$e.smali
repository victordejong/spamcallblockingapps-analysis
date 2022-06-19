.class public Landroidx/fragment/app/a0$e;
.super Landroidx/fragment/app/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/fragment/app/a0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/a0$e;->b:Landroidx/fragment/app/a0;

    invoke-direct {p0}, Landroidx/fragment/app/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/a0$e;->b:Landroidx/fragment/app/a0;

    .line 2
    iget-object p1, p1, Landroidx/fragment/app/a0;->q:Landroidx/fragment/app/x;

    .line 3
    iget-object v0, p1, Landroidx/fragment/app/x;->b:Landroid/content/Context;

    const/4 v1, 0x0

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v0, p2, v1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
