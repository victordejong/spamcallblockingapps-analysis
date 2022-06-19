.class public final Landroidx/fragment/app/i0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/fragment/app/Fragment;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroidx/lifecycle/f$c;

.field public h:Landroidx/lifecycle/f$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroidx/fragment/app/Fragment;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/fragment/app/i0$a;->a:I

    .line 4
    iput-object p2, p0, Landroidx/fragment/app/i0$a;->b:Landroidx/fragment/app/Fragment;

    .line 5
    sget-object p1, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;

    iput-object p1, p0, Landroidx/fragment/app/i0$a;->g:Landroidx/lifecycle/f$c;

    .line 6
    iput-object p1, p0, Landroidx/fragment/app/i0$a;->h:Landroidx/lifecycle/f$c;

    return-void
.end method
