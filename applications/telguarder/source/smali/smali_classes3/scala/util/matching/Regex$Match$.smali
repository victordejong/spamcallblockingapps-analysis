.class public Lscala/util/matching/Regex$Match$;
.super Ljava/lang/Object;
.source "Regex.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/matching/Regex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Match$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/util/matching/Regex$Match$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/matching/Regex$Match$;

    invoke-direct {v0}, Lscala/util/matching/Regex$Match$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/matching/Regex$Match$;->MODULE$:Lscala/util/matching/Regex$Match$;

    return-void
.end method


# virtual methods
.method public unapply(Lscala/util/matching/Regex$Match;)Lscala/Some;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/matching/Regex$Match;",
            ")",
            "Lscala/Some<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 711
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/util/matching/Regex$Match;->matched()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
