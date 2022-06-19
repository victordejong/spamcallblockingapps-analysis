.class public Lcom/callapp/contacts/util/Base64Utils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/common/util/AESUtils$IBase64;


# static fields
.field private static final a:Lcom/callapp/contacts/util/Base64Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/callapp/contacts/util/Base64Utils;

    invoke-direct {v0}, Lcom/callapp/contacts/util/Base64Utils;-><init>()V

    sput-object v0, Lcom/callapp/contacts/util/Base64Utils;->a:Lcom/callapp/contacts/util/Base64Utils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/callapp/contacts/util/Base64Utils;
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/util/Base64Utils;->a:Lcom/callapp/contacts/util/Base64Utils;

    return-object v0
.end method


# virtual methods
.method public final a([B)Ljava/lang/String;
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)[B
    .locals 0

    .line 16
    invoke-static {p1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
