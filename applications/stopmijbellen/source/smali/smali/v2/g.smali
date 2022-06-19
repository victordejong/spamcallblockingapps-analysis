.class public abstract Lv2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lv2/g;
    .locals 4

    .line 1
    new-instance v0, Lv2/b;

    const/4 v1, 0x3

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lv2/b;-><init>(IJ)V

    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()I
.end method
