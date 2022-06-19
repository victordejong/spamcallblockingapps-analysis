.class final Lorg/apache/commons/lang3/builder/ToStringStyle$f;
.super Lorg/apache/commons/lang3/builder/ToStringStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2265
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    const/4 v0, 0x0

    .line 2266
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$f;->setUseClassName(Z)V

    .line 2267
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$f;->setUseIdentityHashCode(Z)V

    .line 2268
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$f;->setUseFieldNames(Z)V

    const-string v0, ""

    .line 2269
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$f;->setContentStart(Ljava/lang/String;)V

    .line 2270
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$f;->setContentEnd(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2278
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle$f;->SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method
