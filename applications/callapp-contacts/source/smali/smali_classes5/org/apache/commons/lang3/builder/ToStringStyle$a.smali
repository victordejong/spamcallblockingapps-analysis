.class final Lorg/apache/commons/lang3/builder/ToStringStyle$a;
.super Lorg/apache/commons/lang3/builder/ToStringStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2164
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2173
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle$a;->DEFAULT_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method
