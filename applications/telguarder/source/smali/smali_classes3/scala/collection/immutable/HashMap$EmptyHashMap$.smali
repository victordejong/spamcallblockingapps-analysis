.class public Lscala/collection/immutable/HashMap$EmptyHashMap$;
.super Lscala/collection/immutable/HashMap;
.source "HashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyHashMap$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/HashMap<",
        "Ljava/lang/Object;",
        "Lscala/runtime/Nothing$;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/HashMap$EmptyHashMap$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/HashMap$EmptyHashMap$;

    invoke-direct {v0}, Lscala/collection/immutable/HashMap$EmptyHashMap$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Lscala/collection/immutable/HashMap;-><init>()V

    sput-object p0, Lscala/collection/immutable/HashMap$EmptyHashMap$;->MODULE$:Lscala/collection/immutable/HashMap$EmptyHashMap$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 159
    sget-object v0, Lscala/collection/immutable/HashMap$EmptyHashMap$;->MODULE$:Lscala/collection/immutable/HashMap$EmptyHashMap$;

    return-object v0
.end method
