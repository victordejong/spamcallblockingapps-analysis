.class public Lscala/sys/Prop$IntProp$;
.super Lscala/sys/CreatorImpl;
.source "Prop.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/Prop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntProp$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/sys/CreatorImpl<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/sys/Prop$IntProp$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/Prop$IntProp$;

    invoke-direct {v0}, Lscala/sys/Prop$IntProp$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 85
    new-instance v0, Lscala/sys/Prop$IntProp$$anonfun$$lessinit$greater$3;

    invoke-direct {v0}, Lscala/sys/Prop$IntProp$$anonfun$$lessinit$greater$3;-><init>()V

    invoke-direct {p0, v0}, Lscala/sys/CreatorImpl;-><init>(Lscala/Function1;)V

    sput-object p0, Lscala/sys/Prop$IntProp$;->MODULE$:Lscala/sys/Prop$IntProp$;

    return-void
.end method
