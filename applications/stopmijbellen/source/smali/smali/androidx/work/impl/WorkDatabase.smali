.class public abstract Landroidx/work/impl/WorkDatabase;
.super Ld1/f;
.source "SourceFile"


# static fields
.field public static final j:J

.field public static final synthetic k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/WorkDatabase;->j:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld1/f;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract l()Lx1/b;
.end method

.method public abstract m()Lx1/e;
.end method

.method public abstract n()Lx1/h;
.end method

.method public abstract o()Lx1/k;
.end method

.method public abstract p()Lx1/n;
.end method

.method public abstract q()Lx1/q;
.end method

.method public abstract r()Lx1/t;
.end method
