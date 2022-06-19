.class public final Lscala/text/Document$;
.super Ljava/lang/Object;
.source "Document.scala"


# static fields
.field public static final MODULE$:Lscala/text/Document$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/text/Document$;

    invoke-direct {v0}, Lscala/text/Document$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/text/Document$;->MODULE$:Lscala/text/Document$;

    return-void
.end method


# virtual methods
.method public break()Lscala/text/DocBreak$;
    .locals 1

    .line 112
    sget-object v0, Lscala/text/DocBreak$;->MODULE$:Lscala/text/DocBreak$;

    return-object v0
.end method

.method public empty()Lscala/text/DocNil$;
    .locals 1

    .line 109
    sget-object v0, Lscala/text/DocNil$;->MODULE$:Lscala/text/DocNil$;

    return-object v0
.end method

.method public group(Lscala/text/Document;)Lscala/text/Document;
    .locals 1

    .line 121
    new-instance v0, Lscala/text/DocGroup;

    invoke-direct {v0, p1}, Lscala/text/DocGroup;-><init>(Lscala/text/Document;)V

    return-object v0
.end method

.method public nest(ILscala/text/Document;)Lscala/text/Document;
    .locals 1

    .line 124
    new-instance v0, Lscala/text/DocNest;

    invoke-direct {v0, p1, p2}, Lscala/text/DocNest;-><init>(ILscala/text/Document;)V

    return-object v0
.end method

.method public text(Ljava/lang/String;)Lscala/text/Document;
    .locals 1

    .line 115
    new-instance v0, Lscala/text/DocText;

    invoke-direct {v0, p1}, Lscala/text/DocText;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
