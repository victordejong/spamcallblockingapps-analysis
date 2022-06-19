.class public final Lscala/Enumeration$$anonfun$scala$Enumeration$$nameOf$1;
.super Lscala/runtime/AbstractFunction0;
.source "Enumeration.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Enumeration;->scala$Enumeration$$nameOf(I)Ljava/lang/String;
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


# instance fields
.field private final synthetic $outer:Lscala/Enumeration;

.field private final i$1:I


# direct methods
.method public constructor <init>(Lscala/Enumeration;I)V
    .locals 0

    .line 180
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Enumeration$$anonfun$scala$Enumeration$$nameOf$1;->$outer:Lscala/Enumeration;

    iput p2, p0, Lscala/Enumeration$$anonfun$scala$Enumeration$$nameOf$1;->i$1:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lscala/Enumeration$$anonfun$scala$Enumeration$$nameOf$1;->apply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/lang/String;
    .locals 2

    .line 180
    iget-object v0, p0, Lscala/Enumeration$$anonfun$scala$Enumeration$$nameOf$1;->$outer:Lscala/Enumeration;

    invoke-virtual {v0}, Lscala/Enumeration;->scala$Enumeration$$populateNameMap()V

    iget-object v0, p0, Lscala/Enumeration$$anonfun$scala$Enumeration$$nameOf$1;->$outer:Lscala/Enumeration;

    invoke-virtual {v0}, Lscala/Enumeration;->scala$Enumeration$$nmap()Lscala/collection/mutable/Map;

    move-result-object v0

    iget v1, p0, Lscala/Enumeration$$anonfun$scala$Enumeration$$nameOf$1;->i$1:I

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Map;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
