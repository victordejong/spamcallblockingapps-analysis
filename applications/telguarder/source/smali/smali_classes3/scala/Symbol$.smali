.class public final Lscala/Symbol$;
.super Lscala/UniquenessCache;
.source "Symbol.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/UniquenessCache<",
        "Ljava/lang/String;",
        "Lscala/Symbol;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/Symbol$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Symbol$;

    invoke-direct {v0}, Lscala/Symbol$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lscala/UniquenessCache;-><init>()V

    sput-object p0, Lscala/Symbol$;->MODULE$:Lscala/Symbol$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 34
    sget-object v0, Lscala/Symbol$;->MODULE$:Lscala/Symbol$;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/Symbol$;->apply(Ljava/lang/String;)Lscala/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;)Lscala/Symbol;
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lscala/UniquenessCache;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Symbol;

    return-object p1
.end method

.method public bridge synthetic keyFromValue(Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 34
    check-cast p1, Lscala/Symbol;

    invoke-virtual {p0, p1}, Lscala/Symbol$;->keyFromValue(Lscala/Symbol;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public keyFromValue(Lscala/Symbol;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Symbol;",
            ")",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/Symbol;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic valueFromKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/Symbol$;->valueFromKey(Ljava/lang/String;)Lscala/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public valueFromKey(Ljava/lang/String;)Lscala/Symbol;
    .locals 1

    .line 36
    new-instance v0, Lscala/Symbol;

    invoke-direct {v0, p1}, Lscala/Symbol;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
