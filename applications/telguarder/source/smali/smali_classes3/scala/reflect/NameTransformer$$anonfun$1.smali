.class public final Lscala/reflect/NameTransformer$$anonfun$1;
.super Lscala/runtime/AbstractFunction0;
.source "NameTransformer.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/reflect/NameTransformer$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lscala/reflect/NameTransformer$$anonfun$1;->apply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/lang/String;
    .locals 1

    const-string v0, "$"

    return-object v0
.end method
