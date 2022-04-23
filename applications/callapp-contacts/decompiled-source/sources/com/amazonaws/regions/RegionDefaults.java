package com.amazonaws.regions;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazonaws/regions/RegionDefaults.class */
public class RegionDefaults {
    RegionDefaults() {
    }

    public static List<Region> a() {
        ArrayList arrayList = new ArrayList();
        Region region = new Region("af-south-1", "amazonaws.com");
        arrayList.add(region);
        a(region, "autoscaling", "autoscaling.af-south-1.amazonaws.com");
        a(region, "dynamodb", "dynamodb.af-south-1.amazonaws.com");
        a(region, "ec2", "ec2.af-south-1.amazonaws.com");
        a(region, "elasticloadbalancing", "elasticloadbalancing.af-south-1.amazonaws.com");
        a(region, "kms", "kms.af-south-1.amazonaws.com");
        a(region, "lambda", "lambda.af-south-1.amazonaws.com");
        a(region, "logs", "logs.af-south-1.amazonaws.com");
        a(region, "s3", "s3.af-south-1.amazonaws.com");
        a(region, "sns", "sns.af-south-1.amazonaws.com");
        a(region, "sqs", "sqs.af-south-1.amazonaws.com");
        Region region2 = new Region("ap-northeast-1", "amazonaws.com");
        arrayList.add(region2);
        a(region2, "autoscaling", "autoscaling.ap-northeast-1.amazonaws.com");
        a(region2, "cognito-identity", "cognito-identity.ap-northeast-1.amazonaws.com");
        a(region2, "cognito-idp", "cognito-idp.ap-northeast-1.amazonaws.com");
        a(region2, "cognito-sync", "cognito-sync.ap-northeast-1.amazonaws.com");
        a(region2, "data.iot", "data.iot.ap-northeast-1.amazonaws.com");
        a(region2, "dynamodb", "dynamodb.ap-northeast-1.amazonaws.com");
        a(region2, "ec2", "ec2.ap-northeast-1.amazonaws.com");
        a(region2, "elasticloadbalancing", "elasticloadbalancing.ap-northeast-1.amazonaws.com");
        a(region2, "firehose", "firehose.ap-northeast-1.amazonaws.com");
        a(region2, "iot", "iot.ap-northeast-1.amazonaws.com");
        a(region2, "kinesis", "kinesis.ap-northeast-1.amazonaws.com");
        a(region2, "kms", "kms.ap-northeast-1.amazonaws.com");
        a(region2, "lambda", "lambda.ap-northeast-1.amazonaws.com");
        a(region2, "logs", "logs.ap-northeast-1.amazonaws.com");
        a(region2, "polly", "polly.ap-northeast-1.amazonaws.com");
        a(region2, "s3", "s3.ap-northeast-1.amazonaws.com");
        a(region2, "sdb", "sdb.ap-northeast-1.amazonaws.com");
        a(region2, "sns", "sns.ap-northeast-1.amazonaws.com");
        a(region2, "sqs", "sqs.ap-northeast-1.amazonaws.com");
        a(region2, "sts", "sts.amazonaws.com");
        Region region3 = new Region("ap-northeast-2", "amazonaws.com");
        arrayList.add(region3);
        a(region3, "autoscaling", "autoscaling.ap-northeast-2.amazonaws.com");
        a(region3, "cognito-identity", "cognito-identity.ap-northeast-2.amazonaws.com");
        a(region3, "cognito-idp", "cognito-idp.ap-northeast-2.amazonaws.com");
        a(region3, "cognito-sync", "cognito-sync.ap-northeast-2.amazonaws.com");
        a(region3, "data.iot", "data.iot.ap-northeast-2.amazonaws.com");
        a(region3, "dynamodb", "dynamodb.ap-northeast-2.amazonaws.com");
        a(region3, "ec2", "ec2.ap-northeast-2.amazonaws.com");
        a(region3, "elasticloadbalancing", "elasticloadbalancing.ap-northeast-2.amazonaws.com");
        a(region3, "iot", "iot.ap-northeast-2.amazonaws.com");
        a(region3, "kinesis", "kinesis.ap-northeast-2.amazonaws.com");
        a(region3, "kms", "kms.ap-northeast-2.amazonaws.com");
        a(region3, "lambda", "lambda.ap-northeast-2.amazonaws.com");
        a(region3, "logs", "logs.ap-northeast-2.amazonaws.com");
        a(region3, "polly", "polly.ap-northeast-2.amazonaws.com");
        a(region3, "s3", "s3.ap-northeast-2.amazonaws.com");
        a(region3, "sns", "sns.ap-northeast-2.amazonaws.com");
        a(region3, "sqs", "sqs.ap-northeast-2.amazonaws.com");
        a(region3, "sts", "sts.ap-northeast-2.amazonaws.com");
        Region region4 = new Region("ap-south-1", "amazonaws.com");
        arrayList.add(region4);
        a(region4, "autoscaling", "autoscaling.ap-south-1.amazonaws.com");
        a(region4, "cognito-identity", "cognito-identity.ap-south-1.amazonaws.com");
        a(region4, "cognito-idp", "cognito-idp.ap-south-1.amazonaws.com");
        a(region4, "cognito-sync", "cognito-sync.ap-south-1.amazonaws.com");
        a(region4, "dynamodb", "dynamodb.ap-south-1.amazonaws.com");
        a(region4, "ec2", "ec2.ap-south-1.amazonaws.com");
        a(region4, "elasticloadbalancing", "elasticloadbalancing.ap-south-1.amazonaws.com");
        a(region4, "kinesis", "kinesis.ap-south-1.amazonaws.com");
        a(region4, "kms", "kms.ap-south-1.amazonaws.com");
        a(region4, "lambda", "lambda.ap-south-1.amazonaws.com");
        a(region4, "logs", "logs.ap-south-1.amazonaws.com");
        a(region4, "polly", "polly.ap-south-1.amazonaws.com");
        a(region4, "s3", "s3.ap-south-1.amazonaws.com");
        a(region4, "sns", "sns.ap-south-1.amazonaws.com");
        a(region4, "sqs", "sqs.ap-south-1.amazonaws.com");
        a(region4, "sts", "sts.amazonaws.com");
        Region region5 = new Region("ap-southeast-1", "amazonaws.com");
        arrayList.add(region5);
        a(region5, "autoscaling", "autoscaling.ap-southeast-1.amazonaws.com");
        a(region5, "cognito-identity", "cognito-identity.ap-southeast-1.amazonaws.com");
        a(region5, "cognito-idp", "cognito-idp.ap-southeast-1.amazonaws.com");
        a(region5, "cognito-sync", "cognito-sync.ap-southeast-1.amazonaws.com");
        a(region5, "data.iot", "data.iot.ap-southeast-1.amazonaws.com");
        a(region5, "dynamodb", "dynamodb.ap-southeast-1.amazonaws.com");
        a(region5, "ec2", "ec2.ap-southeast-1.amazonaws.com");
        a(region5, "elasticloadbalancing", "elasticloadbalancing.ap-southeast-1.amazonaws.com");
        a(region5, "iot", "iot.ap-southeast-1.amazonaws.com");
        a(region5, "kinesis", "kinesis.ap-southeast-1.amazonaws.com");
        a(region5, "kms", "kms.ap-southeast-1.amazonaws.com");
        a(region5, "lambda", "lambda.ap-southeast-1.amazonaws.com");
        a(region5, "logs", "logs.ap-southeast-1.amazonaws.com");
        a(region5, "polly", "polly.ap-southeast-1.amazonaws.com");
        a(region5, "s3", "s3.ap-southeast-1.amazonaws.com");
        a(region5, "sdb", "sdb.ap-southeast-1.amazonaws.com");
        a(region5, "sns", "sns.ap-southeast-1.amazonaws.com");
        a(region5, "sqs", "sqs.ap-southeast-1.amazonaws.com");
        a(region5, "sts", "sts.amazonaws.com");
        Region region6 = new Region("ap-southeast-2", "amazonaws.com");
        arrayList.add(region6);
        a(region6, "autoscaling", "autoscaling.ap-southeast-2.amazonaws.com");
        a(region6, "cognito-identity", "cognito-identity.ap-southeast-2.amazonaws.com");
        a(region6, "cognito-idp", "cognito-idp.ap-southeast-2.amazonaws.com");
        a(region6, "cognito-sync", "cognito-sync.ap-southeast-2.amazonaws.com");
        a(region6, "data.iot", "data.iot.ap-southeast-2.amazonaws.com");
        a(region6, "dynamodb", "dynamodb.ap-southeast-2.amazonaws.com");
        a(region6, "ec2", "ec2.ap-southeast-2.amazonaws.com");
        a(region6, "elasticloadbalancing", "elasticloadbalancing.ap-southeast-2.amazonaws.com");
        a(region6, "iot", "iot.ap-southeast-2.amazonaws.com");
        a(region6, "kinesis", "kinesis.ap-southeast-2.amazonaws.com");
        a(region6, "kms", "kms.ap-southeast-2.amazonaws.com");
        a(region6, "lambda", "lambda.ap-southeast-2.amazonaws.com");
        a(region6, "logs", "logs.ap-southeast-2.amazonaws.com");
        a(region6, "polly", "polly.ap-southeast-2.amazonaws.com");
        a(region6, "s3", "s3.ap-southeast-2.amazonaws.com");
        a(region6, "sdb", "sdb.ap-southeast-2.amazonaws.com");
        a(region6, "sns", "sns.ap-southeast-2.amazonaws.com");
        a(region6, "sqs", "sqs.ap-southeast-2.amazonaws.com");
        a(region6, "sts", "sts.amazonaws.com");
        Region region7 = new Region("ca-central-1", "amazonaws.com");
        arrayList.add(region7);
        a(region7, "autoscaling", "autoscaling.ca-central-1.amazonaws.com");
        a(region7, "dynamodb", "dynamodb.ca-central-1.amazonaws.com");
        a(region7, "ec2", "ec2.ca-central-1.amazonaws.com");
        a(region7, "elasticloadbalancing", "elasticloadbalancing.ca-central-1.amazonaws.com");
        a(region7, "kinesis", "kinesis.ca-central-1.amazonaws.com");
        a(region7, "kms", "kms.ca-central-1.amazonaws.com");
        a(region7, "lambda", "lambda.ca-central-1.amazonaws.com");
        a(region7, "logs", "logs.ca-central-1.amazonaws.com");
        a(region7, "polly", "polly.ca-central-1.amazonaws.com");
        a(region7, "s3", "s3.ca-central-1.amazonaws.com");
        a(region7, "sns", "sns.ca-central-1.amazonaws.com");
        a(region7, "sqs", "sqs.ca-central-1.amazonaws.com");
        a(region7, "sts", "sts.amazonaws.com");
        Region region8 = new Region("eu-central-1", "amazonaws.com");
        arrayList.add(region8);
        a(region8, "autoscaling", "autoscaling.eu-central-1.amazonaws.com");
        a(region8, "cognito-identity", "cognito-identity.eu-central-1.amazonaws.com");
        a(region8, "cognito-idp", "cognito-idp.eu-central-1.amazonaws.com");
        a(region8, "cognito-sync", "cognito-sync.eu-central-1.amazonaws.com");
        a(region8, "data.iot", "data.iot.eu-central-1.amazonaws.com");
        a(region8, "dynamodb", "dynamodb.eu-central-1.amazonaws.com");
        a(region8, "ec2", "ec2.eu-central-1.amazonaws.com");
        a(region8, "elasticloadbalancing", "elasticloadbalancing.eu-central-1.amazonaws.com");
        a(region8, "firehose", "firehose.eu-central-1.amazonaws.com");
        a(region8, "iot", "iot.eu-central-1.amazonaws.com");
        a(region8, "kinesis", "kinesis.eu-central-1.amazonaws.com");
        a(region8, "kms", "kms.eu-central-1.amazonaws.com");
        a(region8, "lambda", "lambda.eu-central-1.amazonaws.com");
        a(region8, "logs", "logs.eu-central-1.amazonaws.com");
        a(region8, "polly", "polly.eu-central-1.amazonaws.com");
        a(region8, "s3", "s3.eu-central-1.amazonaws.com");
        a(region8, "sns", "sns.eu-central-1.amazonaws.com");
        a(region8, "sqs", "sqs.eu-central-1.amazonaws.com");
        a(region8, "sts", "sts.amazonaws.com");
        Region region9 = new Region("eu-south-1", "amazonaws.com");
        arrayList.add(region9);
        a(region9, "autoscaling", "autoscaling.eu-south-1.amazonaws.com");
        a(region9, "dynamodb", "dynamodb.eu-south-1.amazonaws.com");
        a(region9, "ec2", "ec2.eu-south-1.amazonaws.com");
        a(region9, "elasticloadbalancing", "elasticloadbalancing.eu-south-1.amazonaws.com");
        a(region9, "lambda", "lambda.eu-south-1.amazonaws.com");
        a(region9, "logs", "logs.eu-south-1.amazonaws.com");
        a(region9, "s3", "s3.eu-south-1.amazonaws.com");
        a(region9, "sns", "sns.eu-south-1.amazonaws.com");
        a(region9, "sqs", "sqs.eu-south-1.amazonaws.com");
        Region region10 = new Region("eu-west-1", "amazonaws.com");
        arrayList.add(region10);
        a(region10, "autoscaling", "autoscaling.eu-west-1.amazonaws.com");
        a(region10, "cognito-identity", "cognito-identity.eu-west-1.amazonaws.com");
        a(region10, "cognito-idp", "cognito-idp.eu-west-1.amazonaws.com");
        a(region10, "cognito-sync", "cognito-sync.eu-west-1.amazonaws.com");
        a(region10, "data.iot", "data.iot.eu-west-1.amazonaws.com");
        a(region10, "dynamodb", "dynamodb.eu-west-1.amazonaws.com");
        a(region10, "ec2", "ec2.eu-west-1.amazonaws.com");
        a(region10, "elasticloadbalancing", "elasticloadbalancing.eu-west-1.amazonaws.com");
        a(region10, "email", "email.eu-west-1.amazonaws.com");
        a(region10, "firehose", "firehose.eu-west-1.amazonaws.com");
        a(region10, "iot", "iot.eu-west-1.amazonaws.com");
        a(region10, "kinesis", "kinesis.eu-west-1.amazonaws.com");
        a(region10, "kms", "kms.eu-west-1.amazonaws.com");
        a(region10, "lambda", "lambda.eu-west-1.amazonaws.com");
        a(region10, "logs", "logs.eu-west-1.amazonaws.com");
        a(region10, "machinelearning", "machinelearning.eu-west-1.amazonaws.com");
        a(region10, "polly", "polly.eu-west-1.amazonaws.com");
        a(region10, "rekognition", "rekognition.eu-west-1.amazonaws.com");
        a(region10, "s3", "s3.eu-west-1.amazonaws.com");
        a(region10, "sdb", "sdb.eu-west-1.amazonaws.com");
        a(region10, "sns", "sns.eu-west-1.amazonaws.com");
        a(region10, "sqs", "sqs.eu-west-1.amazonaws.com");
        a(region10, "sts", "sts.amazonaws.com");
        Region region11 = new Region("eu-west-2", "amazonaws.com");
        arrayList.add(region11);
        a(region11, "autoscaling", "autoscaling.eu-west-2.amazonaws.com");
        a(region11, "cognito-identity", "cognito-identity.eu-west-2.amazonaws.com");
        a(region11, "cognito-idp", "cognito-idp.eu-west-2.amazonaws.com");
        a(region11, "cognito-sync", "cognito-sync.eu-west-2.amazonaws.com");
        a(region11, "dynamodb", "dynamodb.eu-west-2.amazonaws.com");
        a(region11, "ec2", "ec2.eu-west-2.amazonaws.com");
        a(region11, "elasticloadbalancing", "elasticloadbalancing.eu-west-2.amazonaws.com");
        a(region11, "iot", "iot.eu-west-2.amazonaws.com");
        a(region11, "kinesis", "kinesis.eu-west-2.amazonaws.com");
        a(region11, "kms", "kms.eu-west-2.amazonaws.com");
        a(region11, "lambda", "lambda.eu-west-2.amazonaws.com");
        a(region11, "logs", "logs.eu-west-2.amazonaws.com");
        a(region11, "polly", "polly.eu-west-2.amazonaws.com");
        a(region11, "s3", "s3.eu-west-2.amazonaws.com");
        a(region11, "sns", "sns.eu-west-2.amazonaws.com");
        a(region11, "sqs", "sqs.eu-west-2.amazonaws.com");
        a(region11, "sts", "sts.amazonaws.com");
        Region region12 = new Region("eu-west-3", "amazonaws.com");
        arrayList.add(region12);
        a(region12, "autoscaling", "autoscaling.eu-west-3.amazonaws.com");
        a(region12, "dynamodb", "dynamodb.eu-west-3.amazonaws.com");
        a(region12, "ec2", "ec2.eu-west-3.amazonaws.com");
        a(region12, "elasticloadbalancing", "elasticloadbalancing.eu-west-3.amazonaws.com");
        a(region12, "kinesis", "kinesis.eu-west-3.amazonaws.com");
        a(region12, "kms", "kms.eu-west-3.amazonaws.com");
        a(region12, "lambda", "lambda.eu-west-3.amazonaws.com");
        a(region12, "logs", "logs.eu-west-3.amazonaws.com");
        a(region12, "polly", "polly.eu-west-3.amazonaws.com");
        a(region12, "s3", "s3.eu-west-3.amazonaws.com");
        a(region12, "sns", "sns.eu-west-3.amazonaws.com");
        a(region12, "sqs", "sqs.eu-west-3.amazonaws.com");
        a(region12, "sts", "sts.amazonaws.com");
        Region region13 = new Region("sa-east-1", "amazonaws.com");
        arrayList.add(region13);
        a(region13, "autoscaling", "autoscaling.sa-east-1.amazonaws.com");
        a(region13, "dynamodb", "dynamodb.sa-east-1.amazonaws.com");
        a(region13, "ec2", "ec2.sa-east-1.amazonaws.com");
        a(region13, "elasticloadbalancing", "elasticloadbalancing.sa-east-1.amazonaws.com");
        a(region13, "kinesis", "kinesis.sa-east-1.amazonaws.com");
        a(region13, "kms", "kms.sa-east-1.amazonaws.com");
        a(region13, "lambda", "lambda.sa-east-1.amazonaws.com");
        a(region13, "logs", "logs.sa-east-1.amazonaws.com");
        a(region13, "polly", "polly.sa-east-1.amazonaws.com");
        a(region13, "s3", "s3.sa-east-1.amazonaws.com");
        a(region13, "sdb", "sdb.sa-east-1.amazonaws.com");
        a(region13, "sns", "sns.sa-east-1.amazonaws.com");
        a(region13, "sqs", "sqs.sa-east-1.amazonaws.com");
        a(region13, "sts", "sts.amazonaws.com");
        Region region14 = new Region("us-east-1", "amazonaws.com");
        arrayList.add(region14);
        a(region14, "autoscaling", "autoscaling.us-east-1.amazonaws.com");
        a(region14, "cognito-identity", "cognito-identity.us-east-1.amazonaws.com");
        a(region14, "cognito-idp", "cognito-idp.us-east-1.amazonaws.com");
        a(region14, "cognito-sync", "cognito-sync.us-east-1.amazonaws.com");
        a(region14, "data.iot", "data.iot.us-east-1.amazonaws.com");
        a(region14, "dynamodb", "dynamodb.us-east-1.amazonaws.com");
        a(region14, "ec2", "ec2.us-east-1.amazonaws.com");
        a(region14, "elasticloadbalancing", "elasticloadbalancing.us-east-1.amazonaws.com");
        a(region14, "email", "email.us-east-1.amazonaws.com");
        a(region14, "firehose", "firehose.us-east-1.amazonaws.com");
        a(region14, "iot", "iot.us-east-1.amazonaws.com");
        a(region14, "kinesis", "kinesis.us-east-1.amazonaws.com");
        a(region14, "kms", "kms.us-east-1.amazonaws.com");
        a(region14, "lambda", "lambda.us-east-1.amazonaws.com");
        a(region14, "logs", "logs.us-east-1.amazonaws.com");
        a(region14, "machinelearning", "machinelearning.us-east-1.amazonaws.com");
        a(region14, "mobileanalytics", "mobileanalytics.us-east-1.amazonaws.com");
        a(region14, "pinpoint", "pinpoint.us-east-1.amazonaws.com");
        a(region14, "polly", "polly.us-east-1.amazonaws.com");
        a(region14, "rekognition", "rekognition.us-east-1.amazonaws.com");
        a(region14, "s3", "s3.amazonaws.com");
        a(region14, "sdb", "sdb.amazonaws.com");
        a(region14, "sns", "sns.us-east-1.amazonaws.com");
        a(region14, "sqs", "sqs.us-east-1.amazonaws.com");
        a(region14, "sts", "sts.amazonaws.com");
        Region region15 = new Region("us-east-2", "amazonaws.com");
        arrayList.add(region15);
        a(region15, "autoscaling", "autoscaling.us-east-2.amazonaws.com");
        a(region15, "cognito-identity", "cognito-identity.us-east-2.amazonaws.com");
        a(region15, "cognito-idp", "cognito-idp.us-east-2.amazonaws.com");
        a(region15, "cognito-sync", "cognito-sync.us-east-2.amazonaws.com");
        a(region15, "dynamodb", "dynamodb.us-east-2.amazonaws.com");
        a(region15, "ec2", "ec2.us-east-2.amazonaws.com");
        a(region15, "elasticloadbalancing", "elasticloadbalancing.us-east-2.amazonaws.com");
        a(region15, "firehose", "firehose.us-east-2.amazonaws.com");
        a(region15, "iot", "iot.us-east-2.amazonaws.com");
        a(region15, "kinesis", "kinesis.us-east-2.amazonaws.com");
        a(region15, "kms", "kms.us-east-2.amazonaws.com");
        a(region15, "lambda", "lambda.us-east-2.amazonaws.com");
        a(region15, "logs", "logs.us-east-2.amazonaws.com");
        a(region15, "polly", "polly.us-east-2.amazonaws.com");
        a(region15, "s3", "s3.us-east-2.amazonaws.com");
        a(region15, "sns", "sns.us-east-2.amazonaws.com");
        a(region15, "sqs", "sqs.us-east-2.amazonaws.com");
        a(region15, "sts", "sts.amazonaws.com");
        Region region16 = new Region("us-west-1", "amazonaws.com");
        arrayList.add(region16);
        a(region16, "autoscaling", "autoscaling.us-west-1.amazonaws.com");
        a(region16, "dynamodb", "dynamodb.us-west-1.amazonaws.com");
        a(region16, "ec2", "ec2.us-west-1.amazonaws.com");
        a(region16, "elasticloadbalancing", "elasticloadbalancing.us-west-1.amazonaws.com");
        a(region16, "kinesis", "kinesis.us-west-1.amazonaws.com");
        a(region16, "kms", "kms.us-west-1.amazonaws.com");
        a(region16, "lambda", "lambda.us-west-1.amazonaws.com");
        a(region16, "logs", "logs.us-west-1.amazonaws.com");
        a(region16, "polly", "polly.us-west-1.amazonaws.com");
        a(region16, "s3", "s3.us-west-1.amazonaws.com");
        a(region16, "sdb", "sdb.us-west-1.amazonaws.com");
        a(region16, "sns", "sns.us-west-1.amazonaws.com");
        a(region16, "sqs", "sqs.us-west-1.amazonaws.com");
        a(region16, "sts", "sts.amazonaws.com");
        Region region17 = new Region("us-west-2", "amazonaws.com");
        arrayList.add(region17);
        a(region17, "autoscaling", "autoscaling.us-west-2.amazonaws.com");
        a(region17, "cognito-identity", "cognito-identity.us-west-2.amazonaws.com");
        a(region17, "cognito-idp", "cognito-idp.us-west-2.amazonaws.com");
        a(region17, "cognito-sync", "cognito-sync.us-west-2.amazonaws.com");
        a(region17, "data.iot", "data.iot.us-west-2.amazonaws.com");
        a(region17, "dynamodb", "dynamodb.us-west-2.amazonaws.com");
        a(region17, "ec2", "ec2.us-west-2.amazonaws.com");
        a(region17, "elasticloadbalancing", "elasticloadbalancing.us-west-2.amazonaws.com");
        a(region17, "email", "email.us-west-2.amazonaws.com");
        a(region17, "firehose", "firehose.us-west-2.amazonaws.com");
        a(region17, "iot", "iot.us-west-2.amazonaws.com");
        a(region17, "kinesis", "kinesis.us-west-2.amazonaws.com");
        a(region17, "kms", "kms.us-west-2.amazonaws.com");
        a(region17, "lambda", "lambda.us-west-2.amazonaws.com");
        a(region17, "logs", "logs.us-west-2.amazonaws.com");
        a(region17, "polly", "polly.us-west-2.amazonaws.com");
        a(region17, "rekognition", "rekognition.us-west-2.amazonaws.com");
        a(region17, "s3", "s3.us-west-2.amazonaws.com");
        a(region17, "sdb", "sdb.us-west-2.amazonaws.com");
        a(region17, "sns", "sns.us-west-2.amazonaws.com");
        a(region17, "sqs", "sqs.us-west-2.amazonaws.com");
        a(region17, "sts", "sts.amazonaws.com");
        Region region18 = new Region("cn-north-1", "amazonaws.com.cn");
        arrayList.add(region18);
        a(region18, "autoscaling", "autoscaling.cn-north-1.amazonaws.com.cn");
        a(region18, "cognito-identity", "cognito-identity.cn-north-1.amazonaws.com.cn");
        a(region18, "dynamodb", "dynamodb.cn-north-1.amazonaws.com.cn");
        a(region18, "ec2", "ec2.cn-north-1.amazonaws.com.cn");
        a(region18, "elasticloadbalancing", "elasticloadbalancing.cn-north-1.amazonaws.com.cn");
        a(region18, "iot", "iot.cn-north-1.amazonaws.com.cn");
        a(region18, "kinesis", "kinesis.cn-north-1.amazonaws.com.cn");
        a(region18, "lambda", "lambda.cn-north-1.amazonaws.com.cn");
        a(region18, "logs", "logs.cn-north-1.amazonaws.com.cn");
        a(region18, "s3", "s3.cn-north-1.amazonaws.com.cn");
        a(region18, "sns", "sns.cn-north-1.amazonaws.com.cn");
        a(region18, "sqs", "sqs.cn-north-1.amazonaws.com.cn");
        a(region18, "sts", "sts.cn-north-1.amazonaws.com.cn");
        Region region19 = new Region("cn-northwest-1", "amazonaws.com.cn");
        arrayList.add(region19);
        a(region19, "autoscaling", "autoscaling.cn-northwest-1.amazonaws.com.cn");
        a(region19, "dynamodb", "dynamodb.cn-northwest-1.amazonaws.com.cn");
        a(region19, "ec2", "ec2.cn-northwest-1.amazonaws.com.cn");
        a(region19, "elasticloadbalancing", "elasticloadbalancing.cn-northwest-1.amazonaws.com.cn");
        a(region19, "kinesis", "kinesis.cn-northwest-1.amazonaws.com.cn");
        a(region19, "logs", "logs.cn-northwest-1.amazonaws.com.cn");
        a(region19, "s3", "s3.cn-northwest-1.amazonaws.com.cn");
        a(region19, "sns", "sns.cn-northwest-1.amazonaws.com.cn");
        a(region19, "sqs", "sqs.cn-northwest-1.amazonaws.com.cn");
        a(region19, "sts", "sts.amazonaws.com.cn");
        Region region20 = new Region("us-gov-west-1", "amazonaws.com");
        arrayList.add(region20);
        a(region20, "autoscaling", "autoscaling.us-gov-west-1.amazonaws.com");
        a(region20, "dynamodb", "dynamodb.us-gov-west-1.amazonaws.com");
        a(region20, "ec2", "ec2.us-gov-west-1.amazonaws.com");
        a(region20, "elasticloadbalancing", "elasticloadbalancing.us-gov-west-1.amazonaws.com");
        a(region20, "kinesis", "kinesis.us-gov-west-1.amazonaws.com");
        a(region20, "kms", "kms.us-gov-west-1.amazonaws.com");
        a(region20, "lambda", "lambda.us-gov-west-1.amazonaws.com");
        a(region20, "logs", "logs.us-gov-west-1.amazonaws.com");
        a(region20, "rekognition", "rekognition.us-gov-west-1.amazonaws.com");
        a(region20, "s3", "s3.us-gov-west-1.amazonaws.com");
        a(region20, "sns", "sns.us-gov-west-1.amazonaws.com");
        a(region20, "sqs", "sqs.us-gov-west-1.amazonaws.com");
        a(region20, "sts", "sts.amazonaws.com");
        Region region21 = new Region("eu-north-1", "amazonaws.com");
        arrayList.add(region21);
        a(region21, "autoscaling", "autoscaling.eu-north-1.amazonaws.com");
        a(region21, "dynamodb", "dynamodb.eu-north-1.amazonaws.com");
        a(region21, "ec2", "ec2.eu-north-1.amazonaws.com");
        a(region21, "elasticloadbalancing", "elasticloadbalancing.eu-north-1.amazonaws.com");
        a(region21, "firehose", "firehose.eu-north-1.amazonaws.com");
        a(region21, "iot", "iot.eu-north-1.amazonaws.com");
        a(region21, "kinesis", "kinesis.eu-north-1.amazonaws.com");
        a(region21, "kms", "kms.eu-north-1.amazonaws.com");
        a(region21, "lambda", "lambda.eu-north-1.amazonaws.com");
        a(region21, "logs", "logs.eu-north-1.amazonaws.com");
        a(region21, "s3", "s3.eu-north-1.amazonaws.com");
        a(region21, "sns", "sns.eu-north-1.amazonaws.com");
        a(region21, "sqs", "sqs.eu-north-1.amazonaws.com");
        a(region21, "sts", "sts.amazonaws.com");
        Region region22 = new Region("ap-east-1", "amazonaws.com");
        arrayList.add(region22);
        a(region22, "autoscaling", "autoscaling.ap-east-1.amazonaws.com");
        a(region22, "dynamodb", "dynamodb.ap-east-1.amazonaws.com");
        a(region22, "ec2", "ec2.ap-east-1.amazonaws.com");
        a(region22, "elasticloadbalancing", "elasticloadbalancing.ap-east-1.amazonaws.com");
        a(region22, "firehose", "firehose.ap-east-1.amazonaws.com");
        a(region22, "kinesis", "kinesis.ap-east-1.amazonaws.com");
        a(region22, "kms", "kms.ap-east-1.amazonaws.com");
        a(region22, "lambda", "lambda.ap-east-1.amazonaws.com");
        a(region22, "logs", "logs.ap-east-1.amazonaws.com");
        a(region22, "polly", "polly.ap-east-1.amazonaws.com");
        a(region22, "s3", "s3.ap-east-1.amazonaws.com");
        a(region22, "sns", "sns.ap-east-1.amazonaws.com");
        a(region22, "sqs", "sqs.ap-east-1.amazonaws.com");
        a(region22, "sts", "sts.amazonaws.com");
        Region region23 = new Region("me-south-1", "amazonaws.com");
        arrayList.add(region23);
        a(region23, "autoscaling", "autoscaling.me-south-1.amazonaws.com");
        a(region23, "cognito-identity", "cognito-identity.me-south-1.amazonaws.com");
        a(region23, "cognito-idp", "cognito-idp.me-south-1.amazonaws.com");
        a(region23, "cognito-sync", "cognito-sync.me-south-1.amazonaws.com");
        a(region23, "data.iot", "data.iot.me-south-1.amazonaws.com");
        a(region23, "dynamodb", "dynamodb.me-south-1.amazonaws.com");
        a(region23, "ec2", "ec2.me-south-1.amazonaws.com");
        a(region23, "elasticloadbalancing", "elasticloadbalancing.me-south-1.amazonaws.com");
        a(region23, "firehose", "firehose.me-south-1.amazonaws.com");
        a(region23, "iot", "iot.me-south-1.amazonaws.com");
        a(region23, "kinesis", "kinesis.me-south-1.amazonaws.com");
        a(region23, "kms", "kms.me-south-1.amazonaws.com");
        a(region23, "lambda", "lambda.me-south-1.amazonaws.com");
        a(region23, "logs", "logs.me-south-1.amazonaws.com");
        a(region23, "polly", "polly.me-south-1.amazonaws.com");
        a(region23, "s3", "s3.me-south-1.amazonaws.com");
        a(region23, "sdb", "sdb.me-south-1.amazonaws.com");
        a(region23, "sns", "sns.me-south-1.amazonaws.com");
        a(region23, "sqs", "sqs.me-south-1.amazonaws.com");
        a(region23, "sts", "sts.amazonaws.com");
        return arrayList;
    }

    private static void a(Region region, String str, String str2) {
        Map<String, String> map = region.f6759c;
        Map<String, Boolean> map2 = region.f6760d;
        Map<String, Boolean> map3 = region.e;
        map.put(str, str2);
        map2.put(str, Boolean.FALSE);
        map3.put(str, Boolean.TRUE);
    }
}
