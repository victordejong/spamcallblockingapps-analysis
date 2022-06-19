.class public final Lscala/collection/parallel/Splitter$;
.super Ljava/lang/Object;
.source "Splitter.scala"


# static fields
.field public static final MODULE$:Lscala/collection/parallel/Splitter$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/Splitter$;

    invoke-direct {v0}, Lscala/collection/parallel/Splitter$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/Splitter$;->MODULE$:Lscala/collection/parallel/Splitter$;

    return-void
.end method


# virtual methods
.method public empty()Lscala/collection/parallel/Splitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/Splitter<",
            "TT;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Lscala/collection/parallel/Splitter$$anon$1;

    invoke-direct {v0}, Lscala/collection/parallel/Splitter$$anon$1;-><init>()V

    return-object v0
.end method
