.class public Lscala/Predef$$eq$colon$eq$;
.super Ljava/lang/Object;
.source "Predef.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Predef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "$eq$colon$eq$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/Predef$$eq$colon$eq$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Predef$$eq$colon$eq$;

    invoke-direct {v0}, Lscala/Predef$$eq$colon$eq$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Predef$$eq$colon$eq$;->MODULE$:Lscala/Predef$$eq$colon$eq$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 400
    sget-object v0, Lscala/Predef$$eq$colon$eq$;->MODULE$:Lscala/Predef$$eq$colon$eq$;

    return-object v0
.end method


# virtual methods
.method public tpEquals()Lscala/Predef$$eq$colon$eq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/Predef$$eq$colon$eq<",
            "TA;TA;>;"
        }
    .end annotation

    .line 401
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v0, v0, Lscala/Predef$;->scala$Predef$$singleton_$eq$colon$eq:Lscala/Predef$$eq$colon$eq;

    return-object v0
.end method
