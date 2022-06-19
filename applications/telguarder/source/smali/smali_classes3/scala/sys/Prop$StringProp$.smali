.class public Lscala/sys/Prop$StringProp$;
.super Lscala/sys/CreatorImpl;
.source "Prop.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/Prop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringProp$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/sys/CreatorImpl<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/sys/Prop$StringProp$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/Prop$StringProp$;

    invoke-direct {v0}, Lscala/sys/Prop$StringProp$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 84
    new-instance v0, Lscala/sys/Prop$StringProp$$anonfun$$lessinit$greater$2;

    invoke-direct {v0}, Lscala/sys/Prop$StringProp$$anonfun$$lessinit$greater$2;-><init>()V

    invoke-direct {p0, v0}, Lscala/sys/CreatorImpl;-><init>(Lscala/Function1;)V

    sput-object p0, Lscala/sys/Prop$StringProp$;->MODULE$:Lscala/sys/Prop$StringProp$;

    return-void
.end method
