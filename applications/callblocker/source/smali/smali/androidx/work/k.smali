.class public abstract Landroidx/work/k;
.super Ljava/lang/Object;
.source "InputMergerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/work/k;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Landroidx/work/k$1;

    invoke-direct {v0}, Landroidx/work/k$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Landroidx/work/j;
.end method

.method public final b(Ljava/lang/String;)Landroidx/work/j;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Landroidx/work/k;->a(Ljava/lang/String;)Landroidx/work/j;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    invoke-static {p1}, Landroidx/work/j;->a(Ljava/lang/String;)Landroidx/work/j;

    move-result-object v0

    .line 63
    :cond_0
    return-object v0
.end method
