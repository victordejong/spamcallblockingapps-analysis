.class final Landroidx/fragment/app/o$a;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Landroidx/fragment/app/Fragment;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroidx/lifecycle/e$b;

.field h:Landroidx/lifecycle/e$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/Fragment;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Landroidx/fragment/app/o$a;->a:I

    .line 77
    iput-object p2, p0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    .line 78
    sget-object v0, Landroidx/lifecycle/e$b;->e:Landroidx/lifecycle/e$b;

    iput-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/lifecycle/e$b;

    .line 79
    sget-object v0, Landroidx/lifecycle/e$b;->e:Landroidx/lifecycle/e$b;

    iput-object v0, p0, Landroidx/fragment/app/o$a;->h:Landroidx/lifecycle/e$b;

    .line 80
    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Landroidx/fragment/app/o$a;->a:I

    .line 84
    iput-object p2, p0, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    .line 85
    iget-object v0, p2, Landroidx/fragment/app/Fragment;->Z:Landroidx/lifecycle/e$b;

    iput-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/lifecycle/e$b;

    .line 86
    iput-object p3, p0, Landroidx/fragment/app/o$a;->h:Landroidx/lifecycle/e$b;

    .line 87
    return-void
.end method
