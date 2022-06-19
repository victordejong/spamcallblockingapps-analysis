.class final Landroidx/work/impl/background/systemalarm/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field final a:Landroid/content/Context;

.field final b:I

.field final c:Landroidx/work/impl/background/systemalarm/e;

.field final d:Landroidx/work/impl/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintsCmdHandler"

    .line 42
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/c;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroidx/work/impl/background/systemalarm/e;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/c;->a:Landroid/content/Context;

    .line 55
    iput p2, p0, Landroidx/work/impl/background/systemalarm/c;->b:I

    .line 56
    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/c;->c:Landroidx/work/impl/background/systemalarm/e;

    .line 1189
    iget-object p2, p3, Landroidx/work/impl/background/systemalarm/e;->c:Landroidx/work/impl/utils/b/a;

    .line 58
    new-instance p3, Landroidx/work/impl/a/d;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Landroidx/work/impl/a/d;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/a/c;)V

    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/c;->d:Landroidx/work/impl/a/d;

    return-void
.end method
