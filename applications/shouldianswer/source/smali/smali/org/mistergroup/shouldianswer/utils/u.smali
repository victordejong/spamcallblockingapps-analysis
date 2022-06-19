.class public final Lorg/mistergroup/shouldianswer/utils/u;
.super Ljava/lang/Object;
.source "StopWatch.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/utils/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/u;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/utils/u;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(J)J
    .locals 2

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public final b(J)Ljava/lang/String;
    .locals 2

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
