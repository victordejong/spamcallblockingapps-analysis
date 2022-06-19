.class public final Lcom/explorestack/iab/mraid/MraidView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/mraid/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/explorestack/iab/mraid/c;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:[Ljava/lang/String;

.field public e:Lcom/explorestack/iab/mraid/MraidViewListener;

.field f:Lcom/explorestack/iab/utils/h;

.field g:Lcom/explorestack/iab/utils/h;

.field h:Lcom/explorestack/iab/utils/h;

.field i:Lcom/explorestack/iab/utils/h;

.field j:F

.field k:F

.field l:Z

.field public m:Z

.field n:Z

.field o:Z

.field p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 909
    sget-object v0, Lcom/explorestack/iab/mraid/c;->INLINE:Lcom/explorestack/iab/mraid/c;

    invoke-direct {p0, v0}, Lcom/explorestack/iab/mraid/MraidView$a;-><init>(Lcom/explorestack/iab/mraid/c;)V

    return-void
.end method

.method constructor <init>(Lcom/explorestack/iab/mraid/c;)V
    .locals 1

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 890
    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$a;->d:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 899
    iput v0, p0, Lcom/explorestack/iab/mraid/MraidView$a;->j:F

    .line 900
    iput v0, p0, Lcom/explorestack/iab/mraid/MraidView$a;->k:F

    const/4 v0, 0x1

    .line 903
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView$a;->m:Z

    .line 913
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$a;->a:Lcom/explorestack/iab/mraid/c;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/explorestack/iab/mraid/MraidView;
    .locals 2

    .line 992
    new-instance v0, Lcom/explorestack/iab/mraid/MraidView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/explorestack/iab/mraid/MraidView;-><init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidView$a;Lcom/explorestack/iab/mraid/MraidView$1;)V

    return-object v0
.end method
