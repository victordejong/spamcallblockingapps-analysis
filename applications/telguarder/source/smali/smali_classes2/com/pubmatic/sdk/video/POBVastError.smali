.class public Lcom/pubmatic/sdk/video/POBVastError;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AD_DISPLAY_TIMEOUT:I = 0x130

.field public static final COMPANION_AD_DISPLAY_ERROR:I = 0x25a

.field public static final GENERAL_COMPANION_AD_ERROR:I = 0x258

.field public static final GENERAL_LINEAR_ERROR:I = 0x190

.field public static final GENERAL_NONLINEAR_AD_ERROR:I = 0x1f4

.field public static final GENERAL_WRAPPER_ERROR:I = 0x12c

.field public static final INCORRECT_DURATION:I = 0xca

.field public static final INCORRECT_LINEARITY:I = 0xc9

.field public static final INCORRECT_SIZE:I = 0xcb

.field public static final MEDIA_FILE_DISPLAY_ERROR:I = 0x195

.field public static final MEDIA_FILE_NOT_FOUND:I = 0x191

.field public static final MEDIA_FILE_TIMEOUT:I = 0x192

.field public static final MISSING_AD_CATEGORY:I = 0xcc

.field public static final NO_COMPANION_AD_ERROR:I = 0x25b

.field public static final NO_NONLINEAR_AD:I = 0x1f6

.field public static final NO_SUPPORTED_COMPANION_AD_RESOURCE:I = 0x25c

.field public static final NO_SUPPORTED_MEDIA_FILE:I = 0x193

.field public static final NO_SUPPORTED_NONLINEAR_RESOURCE:I = 0x1f7

.field public static final NO_VAST_RESPONSE:I = 0x12f

.field public static final RECEIVED_BLOCKED_AD_CATEGORIES:I = 0xcd

.field public static final SCHEMA_VALIDATION_ERROR:I = 0x65

.field public static final TRAFFICKING_ERROR:I = 0xc8

.field public static final UNDEFINED_ERROR:I = 0x384

.field public static final UNSUPPORTED_COMPANION_AD:I = 0x259

.field public static final UNSUPPORTED_NONLINEAR_AD:I = 0x1f5

.field public static final UNSUPPORTED_VAST_VERSION:I = 0x66

.field public static final VERIFICATION_EXECUTION_ERROR:I = 0x197

.field public static final WRAPPER_THRESHOLD:I = 0x12e

.field public static final WRAPPER_TIMEOUT:I = 0x12d

.field public static final XML_PARSING_ERROR:I = 0x64


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pubmatic/sdk/video/POBVastError;->a:I

    const/16 v0, 0x195

    if-eq p1, v0, :cond_2

    const/16 v0, 0x197

    if-eq p1, v0, :cond_1

    const/16 v0, 0x384

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    const-string p1, ""

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "UNSUPPORTED_VAST_VERSION"

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "SCHEMA_VALIDATION_ERROR"

    goto/16 :goto_0

    :pswitch_2
    const-string p1, "XML_PARSING_ERROR"

    goto/16 :goto_0

    :pswitch_3
    const-string p1, "RECEIVED_BLOCKED_AD_CATEGORIES"

    goto/16 :goto_0

    :pswitch_4
    const-string p1, "MISSING_AD_CATEGORY"

    goto :goto_0

    :pswitch_5
    const-string p1, "INCORRECT_SIZE"

    goto :goto_0

    :pswitch_6
    const-string p1, "INCORRECT_DURATION"

    goto :goto_0

    :pswitch_7
    const-string p1, "INCORRECT_LINEARITY"

    goto :goto_0

    :pswitch_8
    const-string p1, "TRAFFICKING_ERROR"

    goto :goto_0

    :pswitch_9
    const-string p1, "AD_DISPLAY_TIMEOUT"

    goto :goto_0

    :pswitch_a
    const-string p1, "NO_VAST_RESPONSE"

    goto :goto_0

    :pswitch_b
    const-string p1, "WRAPPER_THRESHOLD"

    goto :goto_0

    :pswitch_c
    const-string p1, "WRAPPER_TIMEOUT"

    goto :goto_0

    :pswitch_d
    const-string p1, "GENERAL_WRAPPER_ERROR"

    goto :goto_0

    :pswitch_e
    const-string p1, "NO_SUPPORTED_MEDIA_FILE"

    goto :goto_0

    :pswitch_f
    const-string p1, "MEDIA_FILE_TIMEOUT"

    goto :goto_0

    :pswitch_10
    const-string p1, "MEDIA_FILE_NOT_FOUND"

    goto :goto_0

    :pswitch_11
    const-string p1, "GENERAL_LINEAR_ERROR"

    goto :goto_0

    :pswitch_12
    const-string p1, "NO_SUPPORTED_NONLINEAR_RESOURCE"

    goto :goto_0

    :pswitch_13
    const-string p1, "NO_NONLINEAR_AD"

    goto :goto_0

    :pswitch_14
    const-string p1, "UNSUPPORTED_NONLINEAR_AD"

    goto :goto_0

    :pswitch_15
    const-string p1, "GENERAL_NONLINEAR_AD_ERROR"

    goto :goto_0

    :pswitch_16
    const-string p1, "NO_SUPPORTED_COMPANION_AD_RESOURCE"

    goto :goto_0

    :pswitch_17
    const-string p1, "NO_COMPANION_AD_ERROR"

    goto :goto_0

    :pswitch_18
    const-string p1, "COMPANION_AD_DISPLAY_ERROR"

    goto :goto_0

    :pswitch_19
    const-string p1, "UNSUPPORTED_COMPANION_AD"

    goto :goto_0

    :pswitch_1a
    const-string p1, "GENERAL_COMPANION_AD_ERROR"

    goto :goto_0

    :cond_0
    const-string p1, "UNDEFINED_ERROR"

    goto :goto_0

    :cond_1
    const-string p1, "VERIFICATION_EXECUTION_ERROR"

    goto :goto_0

    :cond_2
    const-string p1, "MEDIA_FILE_DISPLAY_ERROR"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VAST error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Message: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/video/POBVastError;->b:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12c
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x190
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1f4
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x258
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/POBVastError;->a:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/POBVastError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/pubmatic/sdk/video/POBVastError;->a:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/POBVastError;->b:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POBVastError{errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pubmatic/sdk/video/POBVastError;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pubmatic/sdk/video/POBVastError;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
