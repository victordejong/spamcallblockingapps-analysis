.class public Landroidx/work/impl/utils/k;
.super Ljava/lang/Object;
.source "WorkProgressUpdater.java"

# interfaces
.implements Landroidx/work/p;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field final b:Landroidx/work/impl/WorkDatabase;

.field final c:Landroidx/work/impl/utils/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "WorkProgressUpdater"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/utils/b/a;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/work/impl/utils/k;->b:Landroidx/work/impl/WorkDatabase;

    .line 62
    iput-object p2, p0, Landroidx/work/impl/utils/k;->c:Landroidx/work/impl/utils/b/a;

    .line 63
    return-void
.end method
