.class public final Lscala/sys/Prop$;
.super Ljava/lang/Object;
.source "Prop.scala"


# static fields
.field public static final MODULE$:Lscala/sys/Prop$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/Prop$;

    invoke-direct {v0}, Lscala/sys/Prop$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/sys/Prop$;->MODULE$:Lscala/sys/Prop$;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;Lscala/sys/Prop$Creator;)Lscala/sys/Prop;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lscala/sys/Prop$Creator<",
            "TT;>;)",
            "Lscala/sys/Prop<",
            "TT;>;"
        }
    .end annotation

    .line 88
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    check-cast p2, Lscala/sys/Prop$Creator;

    invoke-interface {p2, p1}, Lscala/sys/Prop$Creator;->apply(Ljava/lang/String;)Lscala/sys/Prop;

    move-result-object p1

    return-object p1
.end method
