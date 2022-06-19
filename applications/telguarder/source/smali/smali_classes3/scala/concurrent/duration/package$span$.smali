.class public Lscala/concurrent/duration/package$span$;
.super Ljava/lang/Object;
.source "package.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/duration/package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "span$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/concurrent/duration/package$span$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/duration/package$span$;

    invoke-direct {v0}, Lscala/concurrent/duration/package$span$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/duration/package$span$;->MODULE$:Lscala/concurrent/duration/package$span$;

    return-void
.end method
