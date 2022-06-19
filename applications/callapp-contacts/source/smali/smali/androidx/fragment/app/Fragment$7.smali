.class final Landroidx/fragment/app/Fragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/a/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/a/a;Landroidx/activity/result/c;Landroidx/activity/result/a;)Landroidx/activity/result/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/a/a/c/a<",
        "Ljava/lang/Void;",
        "Landroidx/activity/result/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/activity/result/c;

.field final synthetic b:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/activity/result/c;)V
    .locals 0

    .line 3467
    iput-object p1, p0, Landroidx/fragment/app/Fragment$7;->b:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/Fragment$7;->a:Landroidx/activity/result/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4470
    iget-object p1, p0, Landroidx/fragment/app/Fragment$7;->a:Landroidx/activity/result/c;

    return-object p1
.end method
