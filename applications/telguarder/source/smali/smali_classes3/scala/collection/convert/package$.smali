.class public final Lscala/collection/convert/package$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/collection/convert/package$;


# instance fields
.field private final decorateAll:Lscala/collection/convert/DecorateAsJava;

.field private final decorateAsJava:Lscala/collection/convert/DecorateAsJava;

.field private final decorateAsScala:Lscala/collection/convert/DecorateAsScala;

.field private final wrapAll:Lscala/collection/convert/WrapAsJava;

.field private final wrapAsJava:Lscala/collection/convert/WrapAsJava;

.field private final wrapAsScala:Lscala/collection/convert/WrapAsScala;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/convert/package$;

    invoke-direct {v0}, Lscala/collection/convert/package$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/convert/package$;->MODULE$:Lscala/collection/convert/package$;

    .line 13
    new-instance v0, Lscala/collection/convert/package$$anon$3;

    invoke-direct {v0}, Lscala/collection/convert/package$$anon$3;-><init>()V

    iput-object v0, p0, Lscala/collection/convert/package$;->decorateAsJava:Lscala/collection/convert/DecorateAsJava;

    .line 14
    new-instance v0, Lscala/collection/convert/package$$anon$4;

    invoke-direct {v0}, Lscala/collection/convert/package$$anon$4;-><init>()V

    iput-object v0, p0, Lscala/collection/convert/package$;->decorateAsScala:Lscala/collection/convert/DecorateAsScala;

    .line 15
    new-instance v0, Lscala/collection/convert/package$$anon$1;

    invoke-direct {v0}, Lscala/collection/convert/package$$anon$1;-><init>()V

    iput-object v0, p0, Lscala/collection/convert/package$;->decorateAll:Lscala/collection/convert/DecorateAsJava;

    .line 16
    new-instance v0, Lscala/collection/convert/package$$anon$5;

    invoke-direct {v0}, Lscala/collection/convert/package$$anon$5;-><init>()V

    iput-object v0, p0, Lscala/collection/convert/package$;->wrapAsJava:Lscala/collection/convert/WrapAsJava;

    .line 17
    new-instance v0, Lscala/collection/convert/package$$anon$6;

    invoke-direct {v0}, Lscala/collection/convert/package$$anon$6;-><init>()V

    iput-object v0, p0, Lscala/collection/convert/package$;->wrapAsScala:Lscala/collection/convert/WrapAsScala;

    .line 18
    new-instance v0, Lscala/collection/convert/package$$anon$2;

    invoke-direct {v0}, Lscala/collection/convert/package$$anon$2;-><init>()V

    iput-object v0, p0, Lscala/collection/convert/package$;->wrapAll:Lscala/collection/convert/WrapAsJava;

    return-void
.end method


# virtual methods
.method public decorateAll()Lscala/collection/convert/DecorateAsJava;
    .locals 1

    .line 15
    iget-object v0, p0, Lscala/collection/convert/package$;->decorateAll:Lscala/collection/convert/DecorateAsJava;

    return-object v0
.end method

.method public decorateAsJava()Lscala/collection/convert/DecorateAsJava;
    .locals 1

    .line 13
    iget-object v0, p0, Lscala/collection/convert/package$;->decorateAsJava:Lscala/collection/convert/DecorateAsJava;

    return-object v0
.end method

.method public decorateAsScala()Lscala/collection/convert/DecorateAsScala;
    .locals 1

    .line 14
    iget-object v0, p0, Lscala/collection/convert/package$;->decorateAsScala:Lscala/collection/convert/DecorateAsScala;

    return-object v0
.end method

.method public wrapAll()Lscala/collection/convert/WrapAsJava;
    .locals 1

    .line 18
    iget-object v0, p0, Lscala/collection/convert/package$;->wrapAll:Lscala/collection/convert/WrapAsJava;

    return-object v0
.end method

.method public wrapAsJava()Lscala/collection/convert/WrapAsJava;
    .locals 1

    .line 16
    iget-object v0, p0, Lscala/collection/convert/package$;->wrapAsJava:Lscala/collection/convert/WrapAsJava;

    return-object v0
.end method

.method public wrapAsScala()Lscala/collection/convert/WrapAsScala;
    .locals 1

    .line 17
    iget-object v0, p0, Lscala/collection/convert/package$;->wrapAsScala:Lscala/collection/convert/WrapAsScala;

    return-object v0
.end method
