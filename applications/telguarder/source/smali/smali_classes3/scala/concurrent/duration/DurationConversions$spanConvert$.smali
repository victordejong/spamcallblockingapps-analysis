.class public Lscala/concurrent/duration/DurationConversions$spanConvert$;
.super Ljava/lang/Object;
.source "DurationConversions.scala"

# interfaces
.implements Lscala/concurrent/duration/DurationConversions$Classifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/duration/DurationConversions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "spanConvert$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/concurrent/duration/DurationConversions$Classifier<",
        "Lscala/concurrent/duration/package$span$;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/concurrent/duration/DurationConversions$spanConvert$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/duration/DurationConversions$spanConvert$;

    invoke-direct {v0}, Lscala/concurrent/duration/DurationConversions$spanConvert$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/duration/DurationConversions$spanConvert$;->MODULE$:Lscala/concurrent/duration/DurationConversions$spanConvert$;

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lscala/concurrent/duration/FiniteDuration;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lscala/concurrent/duration/DurationConversions$spanConvert$;->convert(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/FiniteDuration;
    .locals 0

    return-object p1
.end method
