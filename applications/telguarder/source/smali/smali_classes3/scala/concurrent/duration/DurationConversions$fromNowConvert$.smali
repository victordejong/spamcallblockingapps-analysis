.class public Lscala/concurrent/duration/DurationConversions$fromNowConvert$;
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
    name = "fromNowConvert$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/concurrent/duration/DurationConversions$Classifier<",
        "Lscala/concurrent/duration/package$fromNow$;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/concurrent/duration/DurationConversions$fromNowConvert$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/duration/DurationConversions$fromNowConvert$;

    invoke-direct {v0}, Lscala/concurrent/duration/DurationConversions$fromNowConvert$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/duration/DurationConversions$fromNowConvert$;->MODULE$:Lscala/concurrent/duration/DurationConversions$fromNowConvert$;

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lscala/concurrent/duration/FiniteDuration;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lscala/concurrent/duration/DurationConversions$fromNowConvert$;->convert(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/Deadline;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/Deadline;
    .locals 1

    .line 89
    sget-object v0, Lscala/concurrent/duration/Deadline$;->MODULE$:Lscala/concurrent/duration/Deadline$;

    invoke-virtual {v0}, Lscala/concurrent/duration/Deadline$;->now()Lscala/concurrent/duration/Deadline;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/concurrent/duration/Deadline;->$plus(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/Deadline;

    move-result-object p1

    return-object p1
.end method
