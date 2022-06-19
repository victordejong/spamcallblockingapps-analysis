.class public Lscala/languageFeature$higherKinds$;
.super Ljava/lang/Object;
.source "languageFeature.scala"

# interfaces
.implements Lscala/languageFeature$higherKinds;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/languageFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "higherKinds$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/languageFeature$higherKinds$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/languageFeature$higherKinds$;

    invoke-direct {v0}, Lscala/languageFeature$higherKinds$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/languageFeature$higherKinds$;->MODULE$:Lscala/languageFeature$higherKinds$;

    return-void
.end method
