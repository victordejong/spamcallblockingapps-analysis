.class public Lscala/Predef$Triple$;
.super Ljava/lang/Object;
.source "Predef.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Predef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Triple$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/Predef$Triple$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Predef$Triple$;

    invoke-direct {v0}, Lscala/Predef$Triple$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Predef$Triple$;->MODULE$:Lscala/Predef$Triple$;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Tuple3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(TA;TB;TC;)",
            "Lscala/Tuple3<",
            "TA;TB;TC;>;"
        }
    .end annotation

    .line 241
    new-instance v0, Lscala/Tuple3;

    invoke-direct {v0, p1, p2, p3}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public unapply(Lscala/Tuple3;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple3<",
            "TA;TB;TC;>;)",
            "Lscala/Option<",
            "Lscala/Tuple3<",
            "TA;TB;TC;>;>;"
        }
    .end annotation

    .line 242
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
