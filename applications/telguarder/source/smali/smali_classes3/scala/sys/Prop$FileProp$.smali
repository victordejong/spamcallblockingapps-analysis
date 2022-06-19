.class public Lscala/sys/Prop$FileProp$;
.super Lscala/sys/CreatorImpl;
.source "Prop.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/Prop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileProp$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/sys/CreatorImpl<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/sys/Prop$FileProp$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/Prop$FileProp$;

    invoke-direct {v0}, Lscala/sys/Prop$FileProp$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    new-instance v0, Lscala/sys/Prop$FileProp$$anonfun$$lessinit$greater$1;

    invoke-direct {v0}, Lscala/sys/Prop$FileProp$$anonfun$$lessinit$greater$1;-><init>()V

    invoke-direct {p0, v0}, Lscala/sys/CreatorImpl;-><init>(Lscala/Function1;)V

    sput-object p0, Lscala/sys/Prop$FileProp$;->MODULE$:Lscala/sys/Prop$FileProp$;

    return-void
.end method
