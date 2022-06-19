.class public final Lcom/dropbox/core/DbxWebAuth$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxWebAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/DbxWebAuth$a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/Boolean;

.field private final f:Ljava/lang/Boolean;

.field private final g:Lcom/dropbox/core/k;

.field private final h:Lcom/dropbox/core/o;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/dropbox/core/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 661
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/DbxWebAuth$a;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/k;Lcom/dropbox/core/o;Ljava/lang/String;Lcom/dropbox/core/m;)V
    .locals 0

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$a;->b:Ljava/lang/String;

    .line 685
    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth$a;->c:Ljava/lang/String;

    .line 686
    iput-object p3, p0, Lcom/dropbox/core/DbxWebAuth$a;->d:Ljava/lang/String;

    .line 687
    iput-object p4, p0, Lcom/dropbox/core/DbxWebAuth$a;->e:Ljava/lang/Boolean;

    .line 688
    iput-object p5, p0, Lcom/dropbox/core/DbxWebAuth$a;->f:Ljava/lang/Boolean;

    .line 689
    iput-object p6, p0, Lcom/dropbox/core/DbxWebAuth$a;->g:Lcom/dropbox/core/k;

    .line 690
    iput-object p7, p0, Lcom/dropbox/core/DbxWebAuth$a;->h:Lcom/dropbox/core/o;

    .line 691
    iput-object p8, p0, Lcom/dropbox/core/DbxWebAuth$a;->i:Ljava/lang/String;

    .line 692
    iput-object p9, p0, Lcom/dropbox/core/DbxWebAuth$a;->j:Lcom/dropbox/core/m;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/k;Lcom/dropbox/core/o;Ljava/lang/String;Lcom/dropbox/core/m;Lcom/dropbox/core/DbxWebAuth$1;)V
    .locals 0

    .line 660
    invoke-direct/range {p0 .. p9}, Lcom/dropbox/core/DbxWebAuth$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/k;Lcom/dropbox/core/o;Ljava/lang/String;Lcom/dropbox/core/m;)V

    return-void
.end method

.method public static a()Lcom/dropbox/core/DbxWebAuth$a$a;
    .locals 2

    .line 720
    new-instance v0, Lcom/dropbox/core/DbxWebAuth$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/core/DbxWebAuth$a$a;-><init>(Lcom/dropbox/core/DbxWebAuth$1;)V

    return-object v0
.end method
