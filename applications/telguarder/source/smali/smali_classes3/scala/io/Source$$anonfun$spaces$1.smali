.class public final Lscala/io/Source$$anonfun$spaces$1;
.super Lscala/runtime/AbstractFunction0$mcC$sp;
.source "Source.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/io/Source;->spaces(I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/io/Source;)V
    .locals 0

    .line 302
    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcC$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()C
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lscala/io/Source$$anonfun$spaces$1;->apply()C

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcC$sp()C
    .locals 1

    const/16 v0, 0x20

    return v0
.end method
