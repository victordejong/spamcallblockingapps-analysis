.class public final Lscala/text/DocGroup$;
.super Lscala/runtime/AbstractFunction1;
.source "Document.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/text/Document;",
        "Lscala/text/DocGroup;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/text/DocGroup$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/text/DocGroup$;

    invoke-direct {v0}, Lscala/text/DocGroup$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    sput-object p0, Lscala/text/DocGroup$;->MODULE$:Lscala/text/DocGroup$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 20
    sget-object v0, Lscala/text/DocGroup$;->MODULE$:Lscala/text/DocGroup$;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lscala/text/Document;

    invoke-virtual {p0, p1}, Lscala/text/DocGroup$;->apply(Lscala/text/Document;)Lscala/text/DocGroup;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/text/Document;)Lscala/text/DocGroup;
    .locals 1

    .line 20
    new-instance v0, Lscala/text/DocGroup;

    invoke-direct {v0, p1}, Lscala/text/DocGroup;-><init>(Lscala/text/Document;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DocGroup"

    return-object v0
.end method

.method public unapply(Lscala/text/DocGroup;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/text/DocGroup;",
            ")",
            "Lscala/Option<",
            "Lscala/text/Document;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/text/DocGroup;->doc()Lscala/text/Document;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
