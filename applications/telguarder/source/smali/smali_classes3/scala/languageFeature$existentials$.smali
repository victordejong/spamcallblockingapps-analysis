.class public Lscala/languageFeature$existentials$;
.super Ljava/lang/Object;
.source "languageFeature.scala"

# interfaces
.implements Lscala/languageFeature$existentials;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/languageFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "existentials$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/languageFeature$existentials$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/languageFeature$existentials$;

    invoke-direct {v0}, Lscala/languageFeature$existentials$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/languageFeature$existentials$;->MODULE$:Lscala/languageFeature$existentials$;

    return-void
.end method
