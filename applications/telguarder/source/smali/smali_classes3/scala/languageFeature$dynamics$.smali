.class public Lscala/languageFeature$dynamics$;
.super Ljava/lang/Object;
.source "languageFeature.scala"

# interfaces
.implements Lscala/languageFeature$dynamics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/languageFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dynamics$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/languageFeature$dynamics$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/languageFeature$dynamics$;

    invoke-direct {v0}, Lscala/languageFeature$dynamics$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/languageFeature$dynamics$;->MODULE$:Lscala/languageFeature$dynamics$;

    return-void
.end method
