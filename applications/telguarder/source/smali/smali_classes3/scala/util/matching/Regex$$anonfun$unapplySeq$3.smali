.class public final Lscala/util/matching/Regex$$anonfun$unapplySeq$3;
.super Lscala/runtime/AbstractFunction1;
.source "Regex.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/matching/Regex;->unapplySeq(Ljava/lang/Object;)Lscala/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final m$3:Ljava/util/regex/Matcher;


# direct methods
.method public constructor <init>(Lscala/util/matching/Regex;Ljava/util/regex/Matcher;)V
    .locals 0

    .line 312
    iput-object p2, p0, Lscala/util/matching/Regex$$anonfun$unapplySeq$3;->m$3:Ljava/util/regex/Matcher;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 312
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/matching/Regex$$anonfun$unapplySeq$3;->apply(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lscala/util/matching/Regex$$anonfun$unapplySeq$3;->m$3:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
