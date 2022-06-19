.class final Landroidx/fragment/app/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/s;
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

.field g:Landroidx/lifecycle/j$b;

.field h:Landroidx/lifecycle/j$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/Fragment;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Landroidx/fragment/app/s$a;->a:I

    .line 78
    iput-object p2, p0, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/Fragment;

    .line 79
    sget-object p1, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    iput-object p1, p0, Landroidx/fragment/app/s$a;->g:Landroidx/lifecycle/j$b;

    .line 80
    sget-object p1, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    iput-object p1, p0, Landroidx/fragment/app/s$a;->h:Landroidx/lifecycle/j$b;

    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/Fragment;Landroidx/lifecycle/j$b;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Landroidx/fragment/app/s$a;->a:I

    .line 85
    iput-object p2, p0, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/Fragment;

    .line 86
    iget-object p1, p2, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/j$b;

    iput-object p1, p0, Landroidx/fragment/app/s$a;->g:Landroidx/lifecycle/j$b;

    .line 87
    iput-object p3, p0, Landroidx/fragment/app/s$a;->h:Landroidx/lifecycle/j$b;

    return-void
.end method
